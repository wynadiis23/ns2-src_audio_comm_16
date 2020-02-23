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
set opt(stop) 100.0

# set floor size
set opt(x) 3353.93
set opt(y) 4452.61
set opt(min-x) 2631.28
set opt(min-y) 3645.54

