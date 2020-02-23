# set number of nodes
set opt(nn) 0

# set activity file
set opt(af) $opt(config-path)
append opt(af) /map_ped_actvity.tcl

# set mobility file
set opt(mf) $opt(config-path)
append opt(mf) /map_ped_mobility.tcl

# set start/stop time
set opt(start) 0.0
set opt(stop) 300.0

# set floor size
set opt(x) None
set opt(y) None
set opt(min-x) None
set opt(min-y) None

