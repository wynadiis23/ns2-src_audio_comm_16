# set number of nodes
set opt(nn) 50

# set activity file
set opt(af) $opt(config-path)
append opt(af) /activity.tcl

# set mobility file
set opt(mf) $opt(config-path)
append opt(mf) /mobility.tcl

# set start/stop time
set opt(start) 0.0
set opt(stop) 300.0

# set floor size
set opt(x) 1091.86
set opt(y) 2297.71
set opt(min-x) 209.57
set opt(min-y) 1774.76

