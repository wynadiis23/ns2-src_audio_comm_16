import sys

routings=["AOMDV", "PA_AOMDV"]

nnode=sys.argv[1]
codec=sys.argv[2]
for routing in routings:
	path_packetloss='/home/adisaputra/NS/voip/Project-Jitter-Buffer-master/awk/packetloss/'+str(routing)+'_'+str(codec)+'_pktloss_'+str(nnode)+'.txt'
	print(path_packetloss)
	print(routing)
#path
#path_packetloss='/home/adisaputra/NS/voip/Project-Jitter-Buffer-master/awk/packetloss/'+str(codec)+'_pktloss_'+str(nnode)+'.txt'
#path_delay='/home/adisaputra/NS/voip/Project-Jitter-Buffer-master/awk/'+str(codec)+'_delay_'+str(nnode)+'.txt'
