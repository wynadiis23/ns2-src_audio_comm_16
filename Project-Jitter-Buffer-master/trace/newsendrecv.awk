BEGIN {
recvdSize = 0
startTime = 1e6
stopTime = 0
temp_loss = 0
loss = 0
}

{
# Trace line format: normal
if ($2 != "-t") {
event = $1
time = $2
node_id = $3
flow_id = 0
pkt_id = $7 ;#seq no
pkt_size = $9
flow_t = $8
level = $4
dreason = $6
}
# Trace line format: new ($ns_ use-newtrace)
if ($2 == "-t") {
event = $1
time = $3
node_id = $5
flow_id = $39
pkt_id = $41
pkt_size = $37
flow_t = $35
level = $19
}

# Store packets send time & count #packets sent
if (level == "AGT" && flow_id == flow &&
sendTime[pkt_id]==0 && (event == "+" || event == "s") && pkt_size >= 512) {
if (time < startTime) {
startTime = time
}
sendTime[pkt_id] = time
this_flow = flow_t
sendNum ++
}
# Update total received packets’ size and store packets arrival time
if (level == "AGT" && flow_id == flow && event == "r" && pkt_size >= 512) {
if (time > stopTime) {
stopTime = time
}
# Rip off the header
hdr_size = pkt_size % 512
pkt_size -= hdr_size
# Store received packet’s size
recvdSize += pkt_size
# Store packet’s reception time
recvTime[pkt_id] = time
}
}

END {
for (i in recvTime) {

#delay += recvTime - sendTime
recvdNum ++
}
temp_loss = sendNum - recvdNum
#loss = temp_loss/sendNum
printf(" %15s: %gn", "sendPkts", sendNum)
printf(" %15s: %gn", "receivedPkts", recvdNum)
printf("\nloss: %f", loss)
}