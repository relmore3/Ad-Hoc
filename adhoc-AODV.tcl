# A 3-node example for ad-hoc simulation with AODV 
# Define options
set val(chan)           Channel/WirelessChannel     ;# channel type
set val(prop)           Propagation/TwoRayGround    ;# radio-propagation model
set val(netif)          Phy/WirelessPhy             ;# network interface type
set val(mac)            Mac/802_11                  ;# MAC type
set val(ifq)            Queue/DropTail              ;# interface queue type
set val(ll)             LL                          ;# link layer type
set val(ant)            Antenna/OmniAntenna         ;# antenna model
set val(ifqlen)         50                          ;# max packet in ifq
set val(nn)             60                          ;# number of mobilenodes
set val(rp)             AODV                        ;# routing protocol
set val(x)              500                         ;# X dimension of topography
set val(y)              500                         ;# Y dimension of topography  
set val(stop)           100                         ;# time of simulation end

set ns              [new Simulator]
set tracefd         [open simple-dsdv.tr w]
set windowVsTime2   [open win.tr w] 
set namtrace        [open simwrls1.nam w]    

$ns trace-all $tracefd
$ns use-newtrace 
$ns namtrace-all-wireless $namtrace $val(x) $val(y)

# set up topography object
set topo       [new Topography]

$topo load_flatgrid $val(x) $val(y)

create-god $val(nn)

#
#  Create nn mobilenodes [$val(nn)] and attach them to the channel. 
#

# configure the nodes
        $ns node-config -adhocRouting $val(rp) \
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
            
    for {set i 0} {$i < $val(nn) } { incr i } {
        set node_($i) [$ns node]	
    }

# Provide initial location of mobilenodes
$node_(0) set X_ 5.0
$node_(0) set Y_ 5.0
$node_(0) set Z_ 0.0

$node_(1) set X_ 400.0
$node_(1) set Y_ 200.0
$node_(1) set Z_ 0.0

$node_(2) set X_ 100.0
$node_(2) set Y_ 250.0
$node_(2) set Z_ 0.0

$node_(3) set X_ 10.0
$node_(3) set Y_ 15.0
$node_(3) set Z_ 0.0

$node_(4) set X_ 450.0
$node_(4) set Y_ 320.0
$node_(4) set Z_ 0.0

$node_(5) set X_ 125.0
$node_(5) set Y_ 275.0
$node_(5) set Z_ 0.0

$node_(6) set X_ 20.0
$node_(6) set Y_ 35.0
$node_(6) set Z_ 0.0

$node_(7) set X_ 498.0
$node_(7) set Y_ 300.0
$node_(7) set Z_ 0.0

$node_(8) set X_ 400.0
$node_(8) set Y_ 135.0
$node_(8) set Z_ 0.0

$node_(9) set X_ 24.0
$node_(9) set Y_ 18.0
$node_(9) set Z_ 0.0

$node_(10) set X_ 356.0
$node_(10) set Y_ 213.0
$node_(10) set Z_ 0.0

$node_(11) set X_ 157.0
$node_(11) set Y_ 210.0
$node_(11) set Z_ 0.0

$node_(12) set X_ 355.0
$node_(12) set Y_ 85.0
$node_(12) set Z_ 0.0

$node_(13) set X_ 40.0
$node_(13) set Y_ 35.0
$node_(13) set Z_ 0.0

$node_(14) set X_ 10.0
$node_(14) set Y_ 24.0
$node_(14) set Z_ 0.0

$node_(15) set X_ 15.0
$node_(15) set Y_ 95.0
$node_(15) set Z_ 0.0

$node_(16) set X_ 49.0
$node_(16) set Y_ 28.0
$node_(16) set Z_ 0.0

$node_(17) set X_ 15.0
$node_(17) set Y_ 40.0
$node_(17) set Z_ 0.0

$node_(18) set X_ 145.0
$node_(18) set Y_ 365.0
$node_(18) set Z_ 0.0

$node_(19) set X_ 290.0
$node_(19) set Y_ 185.0
$node_(19) set Z_ 0.0

$node_(20) set X_ 450.0
$node_(20) set Y_ 40.0
$node_(20) set Z_ 0.0

$node_(21) set X_ 135.0
$node_(21) set Y_ 255.0
$node_(21) set Z_ 0.0

$node_(22) set X_ 430.0
$node_(22) set Y_ 215.0
$node_(22) set Z_ 0.0

$node_(23) set X_ 180.0
$node_(23) set Y_ 440.0
$node_(23) set Z_ 0.0

$node_(24) set X_ 85.0
$node_(24) set Y_ 35.0
$node_(24) set Z_ 0.0

$node_(24) set X_ 490.0
$node_(24) set Y_ 285.0
$node_(24) set Z_ 0.0

$node_(25) set X_ 20.0
$node_(25) set Y_ 260.0
$node_(25) set Z_ 0.0

$node_(26) set X_ 59.0
$node_(26) set Y_ 53.0
$node_(26) set Z_ 0.0

$node_(27) set X_ 4.0
$node_(27) set Y_ 5.0
$node_(27) set Z_ 0.0

$node_(28) set X_ 5.0
$node_(28) set Y_ 220.0
$node_(28) set Z_ 0.0

$node_(29) set X_ 5.0
$node_(29) set Y_ 345.0
$node_(29) set Z_ 0.0

$node_(30) set X_ 90.0
$node_(30) set Y_ 285.0
$node_(30) set Z_ 0.0

$node_(31) set X_ 50.0
$node_(31) set Y_ 240.0
$node_(31) set Z_ 0.0

$node_(32) set X_ 35.0
$node_(32) set Y_ 5.0
$node_(32) set Z_ 0.0

$node_(33) set X_ 40.0
$node_(33) set Y_ 485.0
$node_(33) set Z_ 0.0

$node_(34) set X_ 250.0
$node_(34) set Y_ 240.0
$node_(34) set Z_ 0.0

$node_(35) set X_ 235.0
$node_(35) set Y_ 253.0
$node_(35) set Z_ 0.0

$node_(36) set X_ 410.0
$node_(36) set Y_ 215.0
$node_(36) set Z_ 0.0

$node_(37) set X_ 110.0
$node_(37) set Y_ 210.0
$node_(37) set Z_ 0.0

$node_(38) set X_ 15.0
$node_(38) set Y_ 51.0
$node_(38) set Z_ 0.0

$node_(39) set X_ 420.0
$node_(39) set Y_ 225.0
$node_(39) set Z_ 0.0

$node_(40) set X_ 120.0
$node_(40) set Y_ 220.0
$node_(40) set Z_ 0.0

$node_(41) set X_ 25.0
$node_(41) set Y_ 52.0
$node_(41) set Z_ 0.0

$node_(42) set X_ 430.0
$node_(42) set Y_ 235.0
$node_(42) set Z_ 0.0

$node_(43) set X_ 310.0
$node_(43) set Y_ 230.0
$node_(43) set Z_ 0.0

$node_(44) set X_ 153.0
$node_(44) set Y_ 340.0
$node_(44) set Z_ 0.0

$node_(45) set X_ 45.0
$node_(45) set Y_ 54.0
$node_(45) set Z_ 0.0

$node_(46) set X_ 440.0
$node_(46) set Y_ 245.0
$node_(46) set Z_ 0.0

$node_(47) set X_ 450.0
$node_(47) set Y_ 440.0
$node_(47) set Z_ 0.0

$node_(48) set X_ 55.0
$node_(48) set Y_ 55.0
$node_(48) set Z_ 0.0

$node_(49) set X_ 450.0
$node_(49) set Y_ 255.0
$node_(49) set Z_ 0.0

$node_(50) set X_ 150.0
$node_(50) set Y_ 250.0
$node_(50) set Z_ 0.0

$node_(51) set X_ 65.0
$node_(51) set Y_ 56.0
$node_(51) set Z_ 0.0

$node_(52) set X_ 460.0
$node_(52) set Y_ 265.0
$node_(52) set Z_ 0.0

$node_(53) set X_ 160.0
$node_(53) set Y_ 260.0
$node_(53) set Z_ 0.0

$node_(54) set X_ 57.0
$node_(54) set Y_ 75.0
$node_(54) set Z_ 0.0

$node_(55) set X_ 470.0
$node_(55) set Y_ 287.0
$node_(55) set Z_ 0.0

$node_(56) set X_ 170.0
$node_(56) set Y_ 270.0
$node_(56) set Z_ 0.0

$node_(57) set X_ 88.0
$node_(57) set Y_ 58.0
$node_(57) set Z_ 0.0

$node_(58) set X_ 498.0
$node_(58) set Y_ 288.0
$node_(58) set Z_ 0.0

$node_(59) set X_ 158.0
$node_(59) set Y_ 248.0
$node_(59) set Z_ 0.0

# Generation of movements
$ns at 10.0 "$node_(0) setdest 230.0 200.0 3.0"
$ns at 20.0 "$node_(1) setdest 43.0 280.0 5.0"
$ns at 30.0 "$node_(2) setdest 410.0 300.0 5.0" 
$ns at 10.0 "$node_(3) setdest 210.0 200.0 3.0"
$ns at 20.0 "$node_(4) setdest 41.0 85.0 5.0"
$ns at 30.0 "$node_(5) setdest 410.0 30.0 5.0" 
$ns at 10.0 "$node_(6) setdest 210.0 50.0 3.0"
$ns at 20.0 "$node_(7) setdest 42.0 25.0 5.0"
$ns at 30.0 "$node_(8) setdest 420.0 300.0 5.0" 
$ns at 10.0 "$node_(9) setdest 220.0 250.0 3.0"
$ns at 20.0 "$node_(10) setdest 43.0 285.0 5.0"
$ns at 30.0 "$node_(11) setdest 430.0 390.0 5.0" 
$ns at 10.0 "$node_(12) setdest 230.0 270.0 3.0"
$ns at 20.0 "$node_(13) setdest 44.0 285.0 5.0"
$ns at 30.0 "$node_(14) setdest 440.0 30.0 5.0" 
$ns at 10.0 "$node_(15) setdest 140.0 450.0 3.0"
$ns at 20.0 "$node_(16) setdest 45.0 185.0 5.0"
$ns at 30.0 "$node_(17) setdest 450.0 100.0 5.0" 
$ns at 10.0 "$node_(18) setdest 150.0 50.0 3.0"
$ns at 20.0 "$node_(19) setdest 46.0 235.0 5.0"
$ns at 30.0 "$node_(20) setdest 160.0 110.0 5.0" 
$ns at 10.0 "$node_(21) setdest 260.0 210.0 3.0"
$ns at 20.0 "$node_(22) setdest 17.0 281.0 5.0"
$ns at 30.0 "$node_(23) setdest 470.0 100.0 5.0" 
$ns at 10.0 "$node_(24) setdest 210.0 250.0 3.0"
$ns at 20.0 "$node_(25) setdest 48.0 285.0 5.0"
$ns at 30.0 "$node_(26) setdest 480.0 300.0 5.0" 
$ns at 10.0 "$node_(27) setdest 280.0 250.0 3.0"
$ns at 20.0 "$node_(28) setdest 49.0 285.0 5.0"
$ns at 30.0 "$node_(29) setdest 490.0 300.0 5.0" 
$ns at 10.0 "$node_(30) setdest 290.0 250.0 3.0"
$ns at 20.0 "$node_(31) setdest 45.0 285.0 5.0"
$ns at 30.0 "$node_(32) setdest 480.0 300.0 5.0" 
$ns at 10.0 "$node_(33) setdest 250.0 250.0 3.0"
$ns at 20.0 "$node_(34) setdest 45.0 285.0 5.0"
$ns at 30.0 "$node_(35) setdest 480.0 300.0 5.0" 
$ns at 10.0 "$node_(36) setdest 250.0 250.0 3.0"
$ns at 20.0 "$node_(37) setdest 45.0 285.0 5.0"
$ns at 30.0 "$node_(38) setdest 480.0 300.0 5.0" 
$ns at 10.0 "$node_(39) setdest 250.0 250.0 3.0"
$ns at 20.0 "$node_(40) setdest 45.0 285.0 5.0"
$ns at 30.0 "$node_(41) setdest 480.0 300.0 5.0" 
$ns at 10.0 "$node_(42) setdest 250.0 250.0 3.0"
$ns at 20.0 "$node_(43) setdest 45.0 285.0 5.0"
$ns at 30.0 "$node_(44) setdest 480.0 300.0 5.0" 
$ns at 30.0 "$node_(45) setdest 480.0 300.0 5.0" 
$ns at 10.0 "$node_(46) setdest 250.0 250.0 3.0"
$ns at 20.0 "$node_(47) setdest 45.0 285.0 5.0"
$ns at 30.0 "$node_(48) setdest 480.0 300.0 5.0" 
$ns at 10.0 "$node_(49) setdest 250.0 250.0 3.0"
$ns at 20.0 "$node_(50) setdest 45.0 285.0 5.0"
$ns at 30.0 "$node_(51) setdest 480.0 300.0 5.0" 
$ns at 10.0 "$node_(52) setdest 250.0 250.0 3.0"
$ns at 20.0 "$node_(53) setdest 45.0 285.0 5.0"
$ns at 30.0 "$node_(54) setdest 480.0 300.0 5.0" 
$ns at 30.0 "$node_(55) setdest 480.0 300.0 5.0" 
$ns at 10.0 "$node_(56) setdest 250.0 250.0 3.0"
$ns at 20.0 "$node_(57) setdest 45.0 285.0 5.0"
$ns at 30.0 "$node_(58) setdest 480.0 300.0 5.0" 
$ns at 10.0 "$node_(59) setdest 250.0 250.0 3.0"

# Set a TCP connection between node_(0) and node_(1)
set tcp [new Agent/TCP/Newreno]
$tcp set class_ 2
set sink [new Agent/TCPSink]
$ns attach-agent $node_(0) $tcp
$ns attach-agent $node_(1) $sink
$ns connect $tcp $sink


set ftp [new Application/FTP]
$ftp attach-agent $tcp
$ns at 10.0 "$ftp start" 

 

# Define node initial position in nam
for {set i 0} {$i < $val(nn)} { incr i } {
# 30 defines the node size for nam
$ns initial_node_pos $node_($i) 30
}

# Telling nodes when the simulation ends
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns at $val(stop) "$node_($i) reset";
}

# ending nam and the simulation 
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "stop"
$ns at 1000.01 "puts \"end simulation\" ; $ns halt"
proc stop {} {
    global ns tracefd namtrace
    $ns flush-trace
    close $tracefd
    close $namtrace
    exec nam simwrls1.nam &
}

$ns run
