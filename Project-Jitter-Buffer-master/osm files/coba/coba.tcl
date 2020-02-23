# set number of nodes
set opt(nn) 70

# set activity file
set opt(af) $opt(config-path)
append opt(af) /activity.tcl

# set mobility file
set opt(mf) $opt(config-path)
append opt(mf) /mobility.tcl

# set start/stop time
set opt(start) 0.0
set opt(stop) 4000.0

# set floor size
set opt(x) 1091.85
set opt(y) 2297.73
set opt(min-x) 213.33
set opt(min-y) 1774.75

