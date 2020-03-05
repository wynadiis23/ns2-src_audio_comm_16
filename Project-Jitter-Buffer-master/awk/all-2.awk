# http://read.pudn.com/downloads76/sourcecode/unix_linux/network/289904/all.awk__.htm

BEGIN { 
        sends = 0; 
        receives = 0; 
	      routing_packets = 0; 
	      end_to_end_delay = 0; 
	      highest_packet_id = 0; 
} 

{action=$1; 
 
if(action == "s" || action == "r" || action == "f") 
{ 
	# parse the time 
	if($2 == "-t") 
		time = $3; 
		 
	#paarse the packet_id 
	if($40 == "-Ii") 
		packet_id = $41; 
		 
	#calculate the sent packets 
	if(action == "s" && $19 == "AGT" && $35 == "cbr") 
		sends++; 
		 
	#find the number of packets in the simulation 
	if(packet_id > highest_packet_id) 
		highest_packet_id = packet_id; 
		 
	#set the start time, only if its not already set 
	if(start_time[packet_id] == 0) 
		start_time[packet_id] = time; 
		 
	#calculate the receives and end-end delay 
	if(action == "r" && $19 == "AGT" && $35 == "cbr") 
      #if(action == "r")
		{	
		    							
			receives++; 
			end_time[packet_id]= time; 
							
		} 
		else end_time[packet_id] = -1; 

																																														  if(action == "r" && $35 == "lblqAOMDV") 
																																													      
																																															{	
																																															    							
																																																receives+=1; 
																																																end_time[packet_id]= time; 
							
																																															}       
	 


	#calculate the routing packets 
	if(action == "s" || action == "f" && $19 == "RTR" && $35 == "AOMDV" || $35 == "lblqAOMDV"  || $35 == "DSR" || $35 == "message") 
		routing_packets++; 
} 
} 
# ×îºóÊä³ö½á¹û 
END { 
	#calculate the apcket duration for all the packets 
	
	for(packet_id = 0; packet_id < highest_packet_id; packet_id++) 
	{ 
		packet_duration = end_time[packet_id] - start_time[packet_id]; 
		if(packet_duration > 0) 
			end_to_end_delay = end_to_end_delay + packet_duration; 
	} 
	 
	#calculat the average end-end packet delay 
	avg_end_to_end_delay = end_to_end_delay / receives; 
	 
	#calculat he packet delivery fraction 
	pdfraction = (receives / sends) * 100; 
        #calcuate packet drop ratio
        packet_drop_ratio=(sends - receives) / sends
	 
	printf "cbr s:%d r:%d, f:%d \n", sends, receives, routing_packets; 
	printf "avg_end_to_end_delay: %.4f\n", avg_end_to_end_delay;
        printf "Packet Delivery ratio: %.4f\n", pdfraction;
        printf "Packet Drop ratio: %.4f\n", packet_drop_ratio;
	printf "end2end delay: %.4f\n", end_to_end_delay;
         
}
