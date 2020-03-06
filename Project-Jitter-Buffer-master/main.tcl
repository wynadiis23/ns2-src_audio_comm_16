# vim: syntax=tcl
#

##############################################################################
##                       MAIN CONFIGURATION FILE                            ##
##############################################################################

#
## The arguments formats:
# A) 	main.tcl {speed} {the replication setdest file} {buffer type} {codec} {the number of the voip flows} {the bg traffic} {routing algorithm} 
# B)	main.tcl -speed {speed} -try {the replication setdest file} -buffer {buffer type} -codec {codec} -voipflows {the number of the voip flows} -bgtraffic {the bg traffic} -routing {routing algorithm}
#
## IMPORTANT The first type of arguements requires to be in the right order !!! 
## The second type of arguments doesnot require the arguements to be in the right order

proc getopt {argc argv} {
	global opt

	for {set i 0} {$i < $argc} {incr i} {
		set arg [lindex $argv $i]
		if {[string range $arg 0 0] != "-"} continue

		set name [string range $arg 1 end]
		set opt($name) [lindex $argv [expr $i+1]]
	}
}


if {[string is double -strict [lindex $argv 0]]} {	
	set opt(speed) 		[lindex $argv 0] ;# Simulation Speed
	set opt(try) 		[lindex $argv 1] ;# Replication id
	set opt(buffer) 	[lindex $argv 2] ;# Buffer type
	set opt(codec) 		[lindex $argv 3] ;# Codec used
	set opt(voipflows) 	[lindex $argv 4] ;# Number of correlated VoIP flows
	#set opt(bgtraffic)	[lindex $argv 5] ;# Background traffic rate
	set opt(routing)	[lindex $argv 5] ;# Routing algorithms	
	set opt(nnode)		[lindex $argv 6] ;# Jumlah node
	#set opt(mobility)	[lindex $argv 8] ;# mobility files

} else {
	
	getopt $argc $argv
	
}
# L O A D L I S T N O D E
source vnode.tcl
# S E T O U T F I L E
set file "outputs/out-S$opt(speed)-T$opt(try)-B$opt(buffer)-C$opt(codec)-V$opt(voipflows)-R$opt(routing)-N$opt(nnode)-Mmobility_$opt(nnode)-SN_[lindex $vnode1 [expr $opt(try)-1]]-DN_[lindex $vnode2 [expr $opt(try)-1]].output"

if {[file exists $file] == 1} {
	
	puts "# Output file exists! SKIPPING SIMULATION!"
	puts ""
	set skip [open file_skip a]
	puts $skip "skiped: $file"
	close $skip
	exit 0

} else {
	puts "The output file does not exist. Cont. w/ Sim"
	exec touch $file
}

set val(chan)       Channel/WirelessChannel
set val(prop)       Propagation/TwoRayGround
set val(netif)      Phy/WirelessPhy
set val(mac)        Mac/802_11
set val(ifq)        Queue/DropTail/PriQueue
set val(ll)         LL
set val(ant)        Antenna/OmniAntenna
set val(x)              4594  
set val(y)              4864 
set val(ifqlen)         50 
set val(seed)           5.0
set val(adhocRouting)   $opt(routing)
set val(nn)            	$opt(nnode)
set val(stop)           300.0     
#set val(cp)		"./cbr-tcp/$opt(bgtraffic).tcl" ;
#set val(cp)		"./$opt(bgtraffic)" ;
set val(sc)            	"../setdest/setdest-m-$opt(speed)-$opt(try).tcl";# 
set val(vip)		"./voip.tcl"
#set val(mob)	"./$opt(mobility)"

#	R O U T I N G config
if {$opt(routing) == "OLSR" } {
        Agent/OLSR set use_mac_    true
        #Agent/OLSR set debug_             true    
        #Agent/OLSR set willingness 3
        Agent/OLSR set hello_ival_ 10
        Agent/OLSR set tc_ival_    25
}

if {$opt(routing) == "DSR" } {
        set val(ifq) CMUPriQueue
}

#	T R A F F I C config
if {$opt(nnode) == 25} {
	set val(mob) "./osmfiles/mobility/mobility_25.tcl"
	set val(cp) "./traffic-25.tcl"
} elseif {$opt(nnode) == 50} {
	set val(mob) "./osmfiles/mobility/mobility_50.tcl"
	set val(cp) "./traffic-50.tcl"
} elseif {$opt(nnode) == 70} {
	set val(mob) "./osmfiles/mobility/mobility_70.tcl"
	set val(cp) "./traffic-70.tcl"
} else {
	puts "# tidak ada file traffic!!"
	exit 0
}




# M A I N

set ns_		[new Simulator]

set topo	[new Topography]
$topo load_flatgrid $val(x) $val(y)

#use new trace format
$ns_ use-newtrace
set tracefile	[open "trace/voip-$opt(codec)-$opt(nnode)-T$opt(try)-Node[lindex $vnode1 [expr $opt(try)-1]]-[lindex $vnode2 [expr $opt(try)-1]].tr" w]
puts [expr $opt(try)-1]

#I N S E R T T R A C E catat trace ke file txt
set tr_lg "voip-$opt(codec)-$opt(nnode)-T$opt(try)-Node[lindex $vnode1 [expr $opt(try)-1]]-[lindex $vnode2 [expr $opt(try)-1]].tr"
set trace_log_g_711 [open trace_log_g_711 a]
set trace_log_g_723_1 [open trace_log_g_723_1 a]
set trace_log_gsm_amr [open trace_log_gsm_amr a]
if {$opt(codec) == "G.711"} {
	puts $trace_log_g_711 "$tr_lg"
} elseif {$opt(codec) == "G.723.1"} {
	puts $trace_log_g_723_1 "$tr_lg"
} else {
	puts $trace_log_gsm_amr "$tr_lg"
}

close $trace_log_g_711
close $trace_log_g_723_1
close $trace_log_gsm_amr
#set namtrace    [open main-out.nam w]
$ns_ trace-all $tracefile
#$ns_ namtrace-all-wireless $namtrace $val(x) $val(y)

# SET G O D
set god_ [create-god $val(nn)]

#  N O D E   Config
$ns_ node-config -adhocRouting $val(adhocRouting) \
                 -llType $val(ll) \
                 -macType $val(mac) \
                 -ifqType $val(ifq) \
                 -ifqLen $val(ifqlen) \
                 -antType $val(ant) \
                 -propType $val(prop) \
                 -phyType $val(netif) \
                 -channelType $val(chan) \
		 -topoInstance $topo \
		 -agentTrace ON \
                 -routerTrace ON \
                 -macTrace OFF \
                 -movementTrace ON 


for {set i 0} {$i < $val(nn) } {incr i} {
	set node_($i) [$ns_ node]	
	#$node_($i) random-motion 0
	#Without random motion
	}
puts "Loading connection pattern..."
source $val(cp)
puts "Loading scenario file..."
source $val(mob)
puts "Loading VoIP Scenario File..."
source $val(vip)


for {set i 0} {$i < $val(nn)} {incr i} {
    $ns_ at $val(stop).0 "$node_($i) reset";
    $ns_ initial_node_pos $node_($i) 20
}

# Change Node size
#$ns_ initial_node_pos $node_(57) 40
#$ns_ initial_node_pos $node_(28) 40 


$ns_ at  $val(stop).0002 "puts \"NS EXITING...\" ; $ns_ halt"

puts $tracefile "M 0.0 nn $val(nn) x $val(x) y $val(y) rp $val(adhocRouting)"

#Uncomment when it's ok...
puts $tracefile "ini file trace $opt(codec) node $val(nn) mob $val(mob) cp $val(cp)"
#puts $tracefile "M 0.0 sc $val(sc) cp $val(cp) seed $val(seed)"
puts $tracefile "M 0.0 prop $val(prop) ant $val(ant)"

puts "Starting Simulation..."


$ns_ run

