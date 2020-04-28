# http://download1641.mediafireuserdownload.com/69owwrva4m8g/4wk83b43lzw0z4b/statistics.awk

BEGIN {
# Change array size from 50 to any number of nodes for which u are doing simulation. 
# i.e. change values of arrays packet_sent, packet_drop, packet_recvd, packet_forwarded, energy_left, 
start = 0.000000000;
end = 0.000000000;
packet_duration = 0.0000000000;
recvnum = 0;
delay = 0.000000000;
sum = 0.000000000;
i=0;
}

{
state		= 	$1;
time 		= 	$3;

node_id 	= 	$9;
level 		= 	$19;
pkt_type 	= 	$35;
packet_id	= 	$41;
no_of_forwards 	=	$49;

# In for loop change values from 50 to number of nodes that u specify for your simulation  

# Calculating Average End to End Delay

#if ( start_time[packet_id] == 0 )  { start_time[packet_id] = time; }

if (( state == "s") &&  ( pkt_type == "udp" ) && ( level == "AGT" ))  { start_time[packet_id] = time; }

 if (( state == "r") &&  ( pkt_type == "udp" ) && ( level == "AGT" )) {  end_time[packet_id] = time;  }
 else {  end_time[packet_id] = -1;  }

 
}
# In this for loop also change 

END {
# For End to End Delay

for ( i in end_time ) {
 #printf("%d\n", start_time[i]);
 start = start_time[i];
 end = end_time[i];
 packet_duration = end - start;
 if ( packet_duration > 0 )  { sum += packet_duration; recvnum++; }
}
 
#printf("%f\n", sum);
#printf("%f\n", recvnum);
delay=sum/recvnum;
#printf("%.9f ms\n", delay);
printf("%.2f\n", delay*1000); #in milisecond
#printf("%.2f\n", start);
#printf("%.2f\n", end);
#printf("%.2f\n", packet_duration);
}
