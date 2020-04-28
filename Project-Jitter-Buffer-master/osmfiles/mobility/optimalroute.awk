BEGIN {
	optimal_node=25
	add=0.25
	mam=0
	nodenya="""$node(1)"
}
{
	node=$1;
	time=$3;
	node1=$4;
	
	for(i=1;i<optimal_node;i++){
		if(node1 == nodenya){
			time=time+add
			mam=mam+1
		}
		add=add+0.25
	}
	
}
END {
printf("%d\n", mam)
}
