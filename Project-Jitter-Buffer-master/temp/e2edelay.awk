BEGIN {
    print("\n\n********E2E Delay**********\n\n");
    packet_sent[50] = 0;
    packet_drop[50] = 0;
    packet_recvd[50] = 0;
    packet_forwarded[50] = 0;

    total_pkt_sent=0;
    total_pkt_recvd=0;
    total_pkt_drop=0;
    total_pkt_forwarded=0;
    pkt_delivery_ratio = 0;
    total_hop_count = 0;
    avg_hop_count = 0;
    overhead = 0;
    start = 0.000000000;
    end = 0.000000000;
    packet_duration = 0.0000000000;
    recvnum = 0;
    delay = 0.000000000;
    sum = 0.000000000;
    i=0;
    total_energy_consumed = 0.000000;
}
{
    state = $1;
    time = $3;

    node_id = $9;
    level = $19;
    pkt_type = $35;
    packet_id	= 	$41;
    no_of_forwards 	=	$49;

    if((pkt_type == "cbr") && (state == "s") && (level=="AGT")) { 
	for(i=0;i<50;i++) {
		if(i == node_id) {
		packet_sent[i] = packet_sent[i] + 1; }
        }
    }else if((pkt_type == "cbr") && (state == "r") && (level=="AGT")) { 
        for(i=0;i<50;i++) {
            if(i == node_id) {
            packet_recvd[i] = packet_recvd[i] + 1; }
        }
    }else if((pkt_type == "cbr") && (state == "d")) { 
        for(i=0;i<50;i++) {
            if(i == node_id) {
            packet_drop[i] = packet_drop[i] + 1; }
        }
    }else if((pkt_type == "cbr") && (state == "f")) { 
        for(i=0;i<50;i++) {
            if(i == node_id) {
            packet_forwarded[i] = packet_forwarded[i] + 1; }
        }
    }

    # Calculating Average End to End Delay

    #if ( start_time[packet_id] == 0 )  { start_time[packet_id] = time; }

    if (( state == "s") &&  ( pkt_type == "cbr" ) && ( level == "AGT" ))  { 
        start_time[packet_id] = time; 
    }

    if (( state == "r") &&  ( pkt_type == "cbr" ) && ( level == "AGT" )) {  
        end_time[packet_id] = time;  
    }
    else {  
        end_time[packet_id] = -1;  
    }

    
}
END {
    # For End to End Delay

    for ( i in end_time ) {
        start = start_time[i];
        end = end_time[i];
        packet_duration = end - start;
        if ( packet_duration > 0 )  { 
            sum += packet_duration; 
            recvnum++; 
        }
    }
    printf("aaaaaa", state);
    delay=sum/recvnum;
    printf("Average End to End Delay 	:%.9f ms\n", delay);
}