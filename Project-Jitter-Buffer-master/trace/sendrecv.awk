BEGIN {
recvdSize = 0
startTime = 1e6
stopTime = 0
packetloss = 0.0
sendminrec = 0.0
}

#paket_size disesuakian dengan received paket yang digunakan
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
if (level == "AGT" && event == "s" && pkt_size >=  && flow_t == "udp") {
sendNum ++
}
# Update total received packets’ size and store packets arrival time
if (level == "AGT" && event == "r" && pkt_size >= 163 && flow_t == "udp") {
recvdNum++

}

#printf("%d", sendminrec)

}

END {
sendminrec = sendNum - recvdNum
packetloss = (sendminrec/sendNum)*100
printf("%d\n", sendNum)
printf("%d\n", recvdNum)
printf("%f\n", packetloss)
}