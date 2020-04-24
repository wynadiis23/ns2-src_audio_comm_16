#
# nodes: 45, max conn: 45, send rate: 0.20000000000000001, seed: 1
#
#
# 1 connecting to 2 at time 2.5568388786897245
#
set udp_(0) [new Agent/UDP]
$ns_ attach-agent $node_(45) $udp_(0)
set null_(0) [new Agent/Null]
$ns_ attach-agent $node_(1) $null_(0)
set cbr_(0) [new Application/Traffic/CBR]
$cbr_(0) set packetSize_ 512
$cbr_(0) set interval_ 0.20000000000000001
$cbr_(0) set random_ 1
$cbr_(0) set maxpkts_ 10000
$cbr_(0) attach-agent $udp_(0)
$ns_ connect $udp_(0) $null_(0)
$ns_ at 2.5568388786897245 "$cbr_(0) start"
#
# 4 connecting to 5 at time 56.333118917575632
#
set udp_(1) [new Agent/UDP]
$ns_ attach-agent $node_(42) $udp_(1)
set null_(1) [new Agent/Null]
$ns_ attach-agent $node_(41) $null_(1)
set cbr_(1) [new Application/Traffic/CBR]
$cbr_(1) set packetSize_ 512
$cbr_(1) set interval_ 0.20000000000000001
$cbr_(1) set random_ 1
$cbr_(1) set maxpkts_ 10000
$cbr_(1) attach-agent $udp_(1)
$ns_ connect $udp_(1) $null_(1)
$ns_ at 56.333118917575632 "$cbr_(1) start"
#
# 4 connecting to 6 at time 146.96568928983328
#
set udp_(2) [new Agent/UDP]
$ns_ attach-agent $node_(42) $udp_(2)
set null_(2) [new Agent/Null]
$ns_ attach-agent $node_(40) $null_(2)
set cbr_(2) [new Application/Traffic/CBR]
$cbr_(2) set packetSize_ 512
$cbr_(2) set interval_ 0.20000000000000001
$cbr_(2) set random_ 1
$cbr_(2) set maxpkts_ 10000
$cbr_(2) attach-agent $udp_(2)
$ns_ connect $udp_(2) $null_(2)
$ns_ at 146.96568928983328 "$cbr_(2) start"
#
# 6 connecting to 7 at time 55.634230382570173
#
set udp_(3) [new Agent/UDP]
$ns_ attach-agent $node_(40) $udp_(3)
set null_(3) [new Agent/Null]
$ns_ attach-agent $node_(39) $null_(3)
set cbr_(3) [new Application/Traffic/CBR]
$cbr_(3) set packetSize_ 512
$cbr_(3) set interval_ 0.20000000000000001
$cbr_(3) set random_ 1
$cbr_(3) set maxpkts_ 10000
$cbr_(3) attach-agent $udp_(3)
$ns_ connect $udp_(3) $null_(3)
$ns_ at 55.634230382570173 "$cbr_(3) start"
#
# 7 connecting to 8 at time 29.546173154165118
#
set udp_(4) [new Agent/UDP]
$ns_ attach-agent $node_(39) $udp_(4)
set null_(4) [new Agent/Null]
$ns_ attach-agent $node_(38) $null_(4)
set cbr_(4) [new Application/Traffic/CBR]
$cbr_(4) set packetSize_ 512
$cbr_(4) set interval_ 0.20000000000000001
$cbr_(4) set random_ 1
$cbr_(4) set maxpkts_ 10000
$cbr_(4) attach-agent $udp_(4)
$ns_ connect $udp_(4) $null_(4)
$ns_ at 29.546173154165118 "$cbr_(4) start"
#
# 7 connecting to 9 at time 7.7030203154790309
#
set udp_(5) [new Agent/UDP]
$ns_ attach-agent $node_(39) $udp_(5)
set null_(5) [new Agent/Null]
$ns_ attach-agent $node_(37) $null_(5)
set cbr_(5) [new Application/Traffic/CBR]
$cbr_(5) set packetSize_ 512
$cbr_(5) set interval_ 0.20000000000000001
$cbr_(5) set random_ 1
$cbr_(5) set maxpkts_ 10000
$cbr_(5) attach-agent $udp_(5)
$ns_ connect $udp_(5) $null_(5)
$ns_ at 7.7030203154790309 "$cbr_(5) start"
#
# 8 connecting to 9 at time 20.48548468411224
#
set udp_(6) [new Agent/UDP]
$ns_ attach-agent $node_(38) $udp_(6)
set null_(6) [new Agent/Null]
$ns_ attach-agent $node_(37) $null_(6)
set cbr_(6) [new Application/Traffic/CBR]
$cbr_(6) set packetSize_ 512
$cbr_(6) set interval_ 0.20000000000000001
$cbr_(6) set random_ 1
$cbr_(6) set maxpkts_ 10000
$cbr_(6) attach-agent $udp_(6)
$ns_ connect $udp_(6) $null_(6)
$ns_ at 20.48548468411224 "$cbr_(6) start"
#
# 9 connecting to 10 at time 76.258212521792487
#
set udp_(7) [new Agent/UDP]
$ns_ attach-agent $node_(37) $udp_(7)
set null_(7) [new Agent/Null]
$ns_ attach-agent $node_(36) $null_(7)
set cbr_(7) [new Application/Traffic/CBR]
$cbr_(7) set packetSize_ 512
$cbr_(7) set interval_ 0.20000000000000001
$cbr_(7) set random_ 1
$cbr_(7) set maxpkts_ 10000
$cbr_(7) attach-agent $udp_(7)
$ns_ connect $udp_(7) $null_(7)
$ns_ at 76.258212521792487 "$cbr_(7) start"
#
# 9 connecting to 11 at time 31.464945688594575
#
set udp_(8) [new Agent/UDP]
$ns_ attach-agent $node_(37) $udp_(8)
set null_(8) [new Agent/Null]
$ns_ attach-agent $node_(11) $null_(8)
set cbr_(8) [new Application/Traffic/CBR]
$cbr_(8) set packetSize_ 512
$cbr_(8) set interval_ 0.20000000000000001
$cbr_(8) set random_ 1
$cbr_(8) set maxpkts_ 10000
$cbr_(8) attach-agent $udp_(8)
$ns_ connect $udp_(8) $null_(8)
$ns_ at 31.464945688594575 "$cbr_(8) start"
#
# 11 connecting to 12 at time 62.77338456491632
#
set udp_(9) [new Agent/UDP]
$ns_ attach-agent $node_(11) $udp_(9)
set null_(9) [new Agent/Null]
$ns_ attach-agent $node_(12) $null_(9)
set cbr_(9) [new Application/Traffic/CBR]
$cbr_(9) set packetSize_ 512
$cbr_(9) set interval_ 0.20000000000000001
$cbr_(9) set random_ 1
$cbr_(9) set maxpkts_ 10000
$cbr_(9) attach-agent $udp_(9)
$ns_ connect $udp_(9) $null_(9)
$ns_ at 62.77338456491632 "$cbr_(9) start"
#
# 11 connecting to 13 at time 46.455830739092008
#
set udp_(10) [new Agent/UDP]
$ns_ attach-agent $node_(11) $udp_(10)
set null_(10) [new Agent/Null]
$ns_ attach-agent $node_(13) $null_(10)
set cbr_(10) [new Application/Traffic/CBR]
$cbr_(10) set packetSize_ 512
$cbr_(10) set interval_ 0.20000000000000001
$cbr_(10) set random_ 1
$cbr_(10) set maxpkts_ 10000
$cbr_(10) attach-agent $udp_(10)
$ns_ connect $udp_(10) $null_(10)
$ns_ at 46.455830739092008 "$cbr_(10) start"
#
# 13 connecting to 14 at time 83.900868549896813
#
set udp_(11) [new Agent/UDP]
$ns_ attach-agent $node_(13) $udp_(11)
set null_(11) [new Agent/Null]
$ns_ attach-agent $node_(14) $null_(11)
set cbr_(11) [new Application/Traffic/CBR]
$cbr_(11) set packetSize_ 512
$cbr_(11) set interval_ 0.20000000000000001
$cbr_(11) set random_ 1
$cbr_(11) set maxpkts_ 10000
$cbr_(11) attach-agent $udp_(11)
$ns_ connect $udp_(11) $null_(11)
$ns_ at 83.900868549896813 "$cbr_(11) start"
#
# 14 connecting to 15 at time 155.17211061677529
#
set udp_(12) [new Agent/UDP]
$ns_ attach-agent $node_(14) $udp_(12)
set null_(12) [new Agent/Null]
$ns_ attach-agent $node_(15) $null_(12)
set cbr_(12) [new Application/Traffic/CBR]
$cbr_(12) set packetSize_ 512
$cbr_(12) set interval_ 0.20000000000000001
$cbr_(12) set random_ 1
$cbr_(12) set maxpkts_ 10000
$cbr_(12) attach-agent $udp_(12)
$ns_ connect $udp_(12) $null_(12)
$ns_ at 155.17211061677529 "$cbr_(12) start"
#
# 15 connecting to 16 at time 39.088702704333095
#
set udp_(13) [new Agent/UDP]
$ns_ attach-agent $node_(15) $udp_(13)
set null_(13) [new Agent/Null]
$ns_ attach-agent $node_(16) $null_(13)
set cbr_(13) [new Application/Traffic/CBR]
$cbr_(13) set packetSize_ 512
$cbr_(13) set interval_ 0.20000000000000001
$cbr_(13) set random_ 1
$cbr_(13) set maxpkts_ 10000
$cbr_(13) attach-agent $udp_(13)
$ns_ connect $udp_(13) $null_(13)
$ns_ at 39.088702704333095 "$cbr_(13) start"
#
# 15 connecting to 17 at time 43.420613009212822
#
set udp_(14) [new Agent/UDP]
$ns_ attach-agent $node_(15) $udp_(14)
set null_(14) [new Agent/Null]
$ns_ attach-agent $node_(17) $null_(14)
set cbr_(14) [new Application/Traffic/CBR]
$cbr_(14) set packetSize_ 512
$cbr_(14) set interval_ 0.20000000000000001
$cbr_(14) set random_ 1
$cbr_(14) set maxpkts_ 10000
$cbr_(14) attach-agent $udp_(14)
$ns_ connect $udp_(14) $null_(14)
$ns_ at 43.420613009212822 "$cbr_(14) start"
#
# 16 connecting to 17 at time 121.92280978985261
#
set udp_(15) [new Agent/UDP]
$ns_ attach-agent $node_(16) $udp_(15)
set null_(15) [new Agent/Null]
$ns_ attach-agent $node_(17) $null_(15)
set cbr_(15) [new Application/Traffic/CBR]
$cbr_(15) set packetSize_ 512
$cbr_(15) set interval_ 0.20000000000000001
$cbr_(15) set random_ 1
$cbr_(15) set maxpkts_ 10000
$cbr_(15) attach-agent $udp_(15)
$ns_ connect $udp_(15) $null_(15)
$ns_ at 121.92280978985261 "$cbr_(15) start"
#
# 16 connecting to 18 at time 137.20174070317378
#
set udp_(16) [new Agent/UDP]
$ns_ attach-agent $node_(16) $udp_(16)
set null_(16) [new Agent/Null]
$ns_ attach-agent $node_(18) $null_(16)
set cbr_(16) [new Application/Traffic/CBR]
$cbr_(16) set packetSize_ 512
$cbr_(16) set interval_ 0.20000000000000001
$cbr_(16) set random_ 1
$cbr_(16) set maxpkts_ 10000
$cbr_(16) attach-agent $udp_(16)
$ns_ connect $udp_(16) $null_(16)
$ns_ at 137.20174070317378 "$cbr_(16) start"
#
# 17 connecting to 18 at time 72.99343390995331
#
set udp_(17) [new Agent/UDP]
$ns_ attach-agent $node_(17) $udp_(17)
set null_(17) [new Agent/Null]
$ns_ attach-agent $node_(18) $null_(17)
set cbr_(17) [new Application/Traffic/CBR]
$cbr_(17) set packetSize_ 512
$cbr_(17) set interval_ 0.20000000000000001
$cbr_(17) set random_ 1
$cbr_(17) set maxpkts_ 10000
$cbr_(17) attach-agent $udp_(17)
$ns_ connect $udp_(17) $null_(17)
$ns_ at 72.99343390995331 "$cbr_(17) start"
#
# 17 connecting to 19 at time 19.655724884781858
#
set udp_(18) [new Agent/UDP]
$ns_ attach-agent $node_(17) $udp_(18)
set null_(18) [new Agent/Null]
$ns_ attach-agent $node_(19) $null_(18)
set cbr_(18) [new Application/Traffic/CBR]
$cbr_(18) set packetSize_ 512
$cbr_(18) set interval_ 0.20000000000000001
$cbr_(18) set random_ 1
$cbr_(18) set maxpkts_ 10000
$cbr_(18) attach-agent $udp_(18)
$ns_ connect $udp_(18) $null_(18)
$ns_ at 19.655724884781858 "$cbr_(18) start"
#
# 20 connecting to 21 at time 170.32769159894795
#
set udp_(19) [new Agent/UDP]
$ns_ attach-agent $node_(20) $udp_(19)
set null_(19) [new Agent/Null]
$ns_ attach-agent $node_(21) $null_(19)
set cbr_(19) [new Application/Traffic/CBR]
$cbr_(19) set packetSize_ 512
$cbr_(19) set interval_ 0.20000000000000001
$cbr_(19) set random_ 1
$cbr_(19) set maxpkts_ 10000
$cbr_(19) attach-agent $udp_(19)
$ns_ connect $udp_(19) $null_(19)
$ns_ at 170.32769159894795 "$cbr_(19) start"
#
# 20 connecting to 22 at time 160.44260791523504
#
set udp_(20) [new Agent/UDP]
$ns_ attach-agent $node_(20) $udp_(20)
set null_(20) [new Agent/Null]
$ns_ attach-agent $node_(22) $null_(20)
set cbr_(20) [new Application/Traffic/CBR]
$cbr_(20) set packetSize_ 512
$cbr_(20) set interval_ 0.20000000000000001
$cbr_(20) set random_ 1
$cbr_(20) set maxpkts_ 10000
$cbr_(20) attach-agent $udp_(20)
$ns_ connect $udp_(20) $null_(20)
$ns_ at 160.44260791523504 "$cbr_(20) start"
#
# 24 connecting to 25 at time 60.419296464146719
#
set udp_(21) [new Agent/UDP]
$ns_ attach-agent $node_(24) $udp_(21)
set null_(21) [new Agent/Null]
$ns_ attach-agent $node_(25) $null_(21)
set cbr_(21) [new Application/Traffic/CBR]
$cbr_(21) set packetSize_ 512
$cbr_(21) set interval_ 0.20000000000000001
$cbr_(21) set random_ 1
$cbr_(21) set maxpkts_ 10000
$cbr_(21) attach-agent $udp_(21)
$ns_ connect $udp_(21) $null_(21)
$ns_ at 60.419296464146719 "$cbr_(21) start"
#
# 26 connecting to 27 at time 46.258873029732555
#
set udp_(22) [new Agent/UDP]
$ns_ attach-agent $node_(26) $udp_(22)
set null_(22) [new Agent/Null]
$ns_ attach-agent $node_(27) $null_(22)
set cbr_(22) [new Application/Traffic/CBR]
$cbr_(22) set packetSize_ 512
$cbr_(22) set interval_ 0.20000000000000001
$cbr_(22) set random_ 1
$cbr_(22) set maxpkts_ 10000
$cbr_(22) attach-agent $udp_(22)
$ns_ connect $udp_(22) $null_(22)
$ns_ at 46.258873029732555 "$cbr_(22) start"
#
# 27 connecting to 28 at time 98.067954088592884
#
set udp_(23) [new Agent/UDP]
$ns_ attach-agent $node_(27) $udp_(23)
set null_(23) [new Agent/Null]
$ns_ attach-agent $node_(28) $null_(23)
set cbr_(23) [new Application/Traffic/CBR]
$cbr_(23) set packetSize_ 512
$cbr_(23) set interval_ 0.20000000000000001
$cbr_(23) set random_ 1
$cbr_(23) set maxpkts_ 10000
$cbr_(23) attach-agent $udp_(23)
$ns_ connect $udp_(23) $null_(23)
$ns_ at 98.067954088592884 "$cbr_(23) start"
#
# 28 connecting to 29 at time 47.128346453946243
#
set udp_(24) [new Agent/UDP]
$ns_ attach-agent $node_(28) $udp_(24)
set null_(24) [new Agent/Null]
$ns_ attach-agent $node_(29) $null_(24)
set cbr_(24) [new Application/Traffic/CBR]
$cbr_(24) set packetSize_ 512
$cbr_(24) set interval_ 0.20000000000000001
$cbr_(24) set random_ 1
$cbr_(24) set maxpkts_ 10000
$cbr_(24) attach-agent $udp_(24)
$ns_ connect $udp_(24) $null_(24)
$ns_ at 47.128346453946243 "$cbr_(24) start"
#
# 28 connecting to 30 at time 99.87114126788039
#
set udp_(25) [new Agent/UDP]
$ns_ attach-agent $node_(28) $udp_(25)
set null_(25) [new Agent/Null]
$ns_ attach-agent $node_(30) $null_(25)
set cbr_(25) [new Application/Traffic/CBR]
$cbr_(25) set packetSize_ 512
$cbr_(25) set interval_ 0.20000000000000001
$cbr_(25) set random_ 1
$cbr_(25) set maxpkts_ 10000
$cbr_(25) attach-agent $udp_(25)
$ns_ connect $udp_(25) $null_(25)
$ns_ at 99.87114126788039 "$cbr_(25) start"
#
# 33 connecting to 34 at time 170.4269140541679
#
set udp_(26) [new Agent/UDP]
$ns_ attach-agent $node_(33) $udp_(26)
set null_(26) [new Agent/Null]
$ns_ attach-agent $node_(34) $null_(26)
set cbr_(26) [new Application/Traffic/CBR]
$cbr_(26) set packetSize_ 512
$cbr_(26) set interval_ 0.20000000000000001
$cbr_(26) set random_ 1
$cbr_(26) set maxpkts_ 10000
$cbr_(26) attach-agent $udp_(26)
$ns_ connect $udp_(26) $null_(26)
$ns_ at 170.4269140541679 "$cbr_(26) start"
#
# 33 connecting to 35 at time 139.08523271749041
#
set udp_(27) [new Agent/UDP]
$ns_ attach-agent $node_(33) $udp_(27)
set null_(27) [new Agent/Null]
$ns_ attach-agent $node_(9) $null_(27)
set cbr_(27) [new Application/Traffic/CBR]
$cbr_(27) set packetSize_ 512
$cbr_(27) set interval_ 0.20000000000000001
$cbr_(27) set random_ 1
$cbr_(27) set maxpkts_ 10000
$cbr_(27) attach-agent $udp_(27)
$ns_ connect $udp_(27) $null_(27)
$ns_ at 139.08523271749041 "$cbr_(27) start"
#
# 35 connecting to 36 at time 32.17101298839367
#
set udp_(28) [new Agent/UDP]
$ns_ attach-agent $node_(9) $udp_(28)
set null_(28) [new Agent/Null]
$ns_ attach-agent $node_(8) $null_(28)
set cbr_(28) [new Application/Traffic/CBR]
$cbr_(28) set packetSize_ 512
$cbr_(28) set interval_ 0.20000000000000001
$cbr_(28) set random_ 1
$cbr_(28) set maxpkts_ 10000
$cbr_(28) attach-agent $udp_(28)
$ns_ connect $udp_(28) $null_(28)
$ns_ at 32.17101298839367 "$cbr_(28) start"
#
# 36 connecting to 37 at time 16.444244867397586
#
set udp_(29) [new Agent/UDP]
$ns_ attach-agent $node_(8) $udp_(29)
set null_(29) [new Agent/Null]
$ns_ attach-agent $node_(7) $null_(29)
set cbr_(29) [new Application/Traffic/CBR]
$cbr_(29) set packetSize_ 512
$cbr_(29) set interval_ 0.20000000000000001
$cbr_(29) set random_ 1
$cbr_(29) set maxpkts_ 10000
$cbr_(29) attach-agent $udp_(29)
$ns_ connect $udp_(29) $null_(29)
$ns_ at 16.444244867397586 "$cbr_(29) start"
#
# 36 connecting to 38 at time 88.50990661816202
#
set udp_(30) [new Agent/UDP]
$ns_ attach-agent $node_(8) $udp_(30)
set null_(30) [new Agent/Null]
$ns_ attach-agent $node_(6) $null_(30)
set cbr_(30) [new Application/Traffic/CBR]
$cbr_(30) set packetSize_ 512
$cbr_(30) set interval_ 0.20000000000000001
$cbr_(30) set random_ 1
$cbr_(30) set maxpkts_ 10000
$cbr_(30) attach-agent $udp_(30)
$ns_ connect $udp_(30) $null_(30)
$ns_ at 88.50990661816202 "$cbr_(30) start"
#
# 38 connecting to 39 at time 95.921739365869087
#
set udp_(31) [new Agent/UDP]
$ns_ attach-agent $node_(6) $udp_(31)
set null_(31) [new Agent/Null]
$ns_ attach-agent $node_(5) $null_(31)
set cbr_(31) [new Application/Traffic/CBR]
$cbr_(31) set packetSize_ 512
$cbr_(31) set interval_ 0.20000000000000001
$cbr_(31) set random_ 1
$cbr_(31) set maxpkts_ 10000
$cbr_(31) attach-agent $udp_(31)
$ns_ connect $udp_(31) $null_(31)
$ns_ at 95.921739365869087 "$cbr_(31) start"
#
# 38 connecting to 40 at time 132.31640266828072
#
set udp_(32) [new Agent/UDP]
$ns_ attach-agent $node_(6) $udp_(32)
set null_(32) [new Agent/Null]
$ns_ attach-agent $node_(4) $null_(32)
set cbr_(32) [new Application/Traffic/CBR]
$cbr_(32) set packetSize_ 512
$cbr_(32) set interval_ 0.20000000000000001
$cbr_(32) set random_ 1
$cbr_(32) set maxpkts_ 10000
$cbr_(32) attach-agent $udp_(32)
$ns_ connect $udp_(32) $null_(32)
$ns_ at 132.31640266828072 "$cbr_(32) start"
#
# 41 connecting to 42 at time 162.51257573371407
#
set udp_(33) [new Agent/UDP]
$ns_ attach-agent $node_(3) $udp_(33)
set null_(33) [new Agent/Null]
$ns_ attach-agent $node_(2) $null_(33)
set cbr_(33) [new Application/Traffic/CBR]
$cbr_(33) set packetSize_ 512
$cbr_(33) set interval_ 0.20000000000000001
$cbr_(33) set random_ 1
$cbr_(33) set maxpkts_ 10000
$cbr_(33) attach-agent $udp_(33)
$ns_ connect $udp_(33) $null_(33)
$ns_ at 162.51257573371407 "$cbr_(33) start"
#
# 41 connecting to 43 at time 131.04751890108341
#
set udp_(34) [new Agent/UDP]
$ns_ attach-agent $node_(3) $udp_(34)
set null_(34) [new Agent/Null]
$ns_ attach-agent $node_(44) $null_(34)
set cbr_(34) [new Application/Traffic/CBR]
$cbr_(34) set packetSize_ 512
$cbr_(34) set interval_ 0.20000000000000001
$cbr_(34) set random_ 1
$cbr_(34) set maxpkts_ 10000
$cbr_(34) attach-agent $udp_(34)
$ns_ connect $udp_(34) $null_(34)
$ns_ at 131.04751890108341 "$cbr_(34) start"
#
# 42 connecting to 43 at time 105.50024639139895
#
set udp_(35) [new Agent/UDP]
$ns_ attach-agent $node_(2) $udp_(35)
set null_(35) [new Agent/Null]
$ns_ attach-agent $node_(44) $null_(35)
set cbr_(35) [new Application/Traffic/CBR]
$cbr_(35) set packetSize_ 512
$cbr_(35) set interval_ 0.20000000000000001
$cbr_(35) set random_ 1
$cbr_(35) set maxpkts_ 10000
$cbr_(35) attach-agent $udp_(35)
$ns_ connect $udp_(35) $null_(35)
$ns_ at 105.50024639139895 "$cbr_(35) start"
#
# 42 connecting to 44 at time 132.45129531829213
#
set udp_(36) [new Agent/UDP]
$ns_ attach-agent $node_(2) $udp_(36)
set null_(36) [new Agent/Null]
$ns_ attach-agent $node_(1) $null_(36)
set cbr_(36) [new Application/Traffic/CBR]
$cbr_(36) set packetSize_ 512
$cbr_(36) set interval_ 0.20000000000000001
$cbr_(36) set random_ 1
$cbr_(36) set maxpkts_ 10000
$cbr_(36) attach-agent $udp_(36)
$ns_ connect $udp_(36) $null_(36)
$ns_ at 132.45129531829213 "$cbr_(36) start"
#
# 43 connecting to 44 at time 64.09054449018582
#
set udp_(37) [new Agent/UDP]
$ns_ attach-agent $node_(44) $udp_(37)
set null_(37) [new Agent/Null]
$ns_ attach-agent $node_(1) $null_(37)
set cbr_(37) [new Application/Traffic/CBR]
$cbr_(37) set packetSize_ 512
$cbr_(37) set interval_ 0.20000000000000001
$cbr_(37) set random_ 1
$cbr_(37) set maxpkts_ 10000
$cbr_(37) attach-agent $udp_(37)
$ns_ connect $udp_(37) $null_(37)
$ns_ at 64.09054449018582 "$cbr_(37) start"
#
# 43 connecting to 45 at time 100.5135456661291
#
set udp_(38) [new Agent/UDP]
$ns_ attach-agent $node_(44) $udp_(38)
set null_(38) [new Agent/Null]
$ns_ attach-agent $node_(45) $null_(38)
set cbr_(38) [new Application/Traffic/CBR]
$cbr_(38) set packetSize_ 512
$cbr_(38) set interval_ 0.20000000000000001
$cbr_(38) set random_ 1
$cbr_(38) set maxpkts_ 10000
$cbr_(38) attach-agent $udp_(38)
$ns_ connect $udp_(38) $null_(38)
$ns_ at 100.5135456661291 "$cbr_(38) start"
#
# 44 connecting to 45 at time 141.0795085137149
#
set udp_(39) [new Agent/UDP]
$ns_ attach-agent $node_(1) $udp_(39)
set null_(39) [new Agent/Null]
$ns_ attach-agent $node_(45) $null_(39)
set cbr_(39) [new Application/Traffic/CBR]
$cbr_(39) set packetSize_ 512
$cbr_(39) set interval_ 0.20000000000000001
$cbr_(39) set random_ 1
$cbr_(39) set maxpkts_ 10000
$cbr_(39) attach-agent $udp_(39)
$ns_ connect $udp_(39) $null_(39)
$ns_ at 141.0795085137149 "$cbr_(39) start"
#
# 44 connecting to 0 at time 119.43466429572304
#
set udp_(40) [new Agent/UDP]
$ns_ attach-agent $node_(1) $udp_(40)
set null_(40) [new Agent/Null]
$ns_ attach-agent $node_(0) $null_(40)
set cbr_(40) [new Application/Traffic/CBR]
$cbr_(40) set packetSize_ 512
$cbr_(40) set interval_ 0.20000000000000001
$cbr_(40) set random_ 1
$cbr_(40) set maxpkts_ 10000
$cbr_(40) attach-agent $udp_(40)
$ns_ connect $udp_(40) $null_(40)
$ns_ at 119.43466429572304 "$cbr_(40) start"
#
#Total sources/connections: 25/41
#
