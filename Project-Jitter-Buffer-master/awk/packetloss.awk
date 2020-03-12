BEGIN {

# Change array size from node to any number of nodes for which u are doing simulation. 
# i.e. change values of arrays packet_sent, packet_drop, packet_recvd, packet_forwarded, energy_left, 
packet_sent[node] = 0;
packet_recvd[node] = 0;

# Change energy assigned to initial node (as per your simulation tcl file)
# Initial Energy assigned to each node in Joules

total_pkt_sent=0;
total_pkt_recvd=0;
temp=0;
pkt_loss=0;
}

{
state		= 	$1;
time 		= 	$3;
node_id 	= 	$9;
level 		= 	$19;
pkt_type 	= 	$35;

# In for loop change values from node to number of nodes that u specify for your simulation  

if((pkt_type == "udp") && (state == "s") && (level=="AGT")) { 
	for(i=0;i<node;i++) {
		if(i == node_id) {
		packet_sent[i] = packet_sent[i] + 1; }
}
}else if((pkt_type == "udp") && (state == "r") && (level=="AGT")) { 
	for(i=0;i<node;i++) {
		if(i == node_id) {
		packet_recvd[i] = packet_recvd[i] + 1; }
}
}
}
 
# In this for loop also change 

END {
#print for node mana yang ngirim paket dan berapa
for(i=0;i<node;i++) {
#printf("%d %d \n",i, packet_sent[i]) > "pktsent.txt";
#printf("%d %d \n",i, packet_recvd[i]) > "pktrecvd.txt";

total_pkt_sent = total_pkt_sent + packet_sent[i];
total_pkt_recvd = total_pkt_recvd + packet_recvd[i];

}
temp=total_pkt_sent-total_pkt_recvd;
pkt_loss=(temp/total_pkt_sent) #desimal
#printf("Total Packets Sent 		:	%d\n",total_pkt_sent);
#printf("Total Packets Received 		:	%d\n",total_pkt_recvd);
#printf("Packet loss ratio : %.2f %\n", pkt_loss);
printf("%.2f\n", pkt_loss);

#if(((total_pkt_recvd + total_pkt_drop)/total_pkt_sent)==1) {
#       printf("Statistics Correct !!!");
#}
}
 
