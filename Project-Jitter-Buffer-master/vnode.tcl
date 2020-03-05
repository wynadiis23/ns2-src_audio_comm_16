#set source node dan destination node
if { $opt(nnode) == 50 } {
	set vnode1 {1 2 3 4 5 6 7 8 9 10}
	set vnode2 {49 48 47 46 45 44 43 42 41 40}
} elseif { $opt(nnode) == 70 } {
	set vnode1 {1 2 3 4 5 6 7 8 9 10}
	set vnode2 {69 68 67 66 65 64 63 62 61 60}
} else {
	set vnode1 {2 6 10 14 18}                                                                    
	set vnode2 {3 7 11 15 19}
}
