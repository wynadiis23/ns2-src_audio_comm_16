#set source node dan destination node
if { $opt(nnode) == 50 } {
	set vnode1 {1 2 3 4 5 6 7 8 9 10}
	set vnode2 {49 48 47 46 45 44 43 42 41 40}
} elseif { $opt(nnode) == 25 } {
	set vnode1 {1 2 3 4 5 6 7 8 9 10}
	set vnode2 {24 23 22 21 20 19 18 17 16 15}
} elseif { $opt(nnode) == 35 } {
	set vnode1 {1 2 3 4 5 6 7 8 9 10}
	set vnode2 {34 33 32 31 30 29 28 27 26 25}
} elseif { $opt(nnode) == 45 } {
	set vnode1 {1 2 3 4 5 6 7 8 9 10}
	set vnode2 {44 43 42 41 40 39 38 37 36 35}
} elseif { $opt(nnode) == 55 } {
	set vnode1 {1 2 3 4 5 6 7 8 9 10}
	set vnode2 {54 53 52 51 50 49 48 47 46 45}
} elseif { $opt(nnode) == 65 } {
	set vnode1 {1 2 3 4 5 6 7 8 9 10}
	set vnode2 {64 63 62 61 60 59 58 57 56 55}
} elseif { $opt(nnode) == 75 } {
	set vnode1 {1 2 3 4 5 6 7 8 9 10}
	set vnode2 {74 73 72 71 70 69 68 67 66 65}
} elseif { $opt(nnode) == 70 } {
	set vnode1 {1 2 3 4 5 6 7 8 9 10}
	set vnode2 {69 68 67 66 65 64 63 62 61 60}
} else {
	set vnode1 {2 6 10 14 18}                                                                    
	set vnode2 {3 7 11 15 19}
}
