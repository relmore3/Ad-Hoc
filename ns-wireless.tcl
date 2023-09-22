# ======================================================================
# Define options
# ======================================================================
set val(chan)         Channel/WirelessChannel  ;# channel type
set val(prop)         Propagation/TwoRayGround ;# radio-propagation model
set val(ant)          Antenna/OmniAntenna      ;# Antenna type
set val(ll)           LL                       ;# Link layer type
set val(ifq)          Queue/DropTail/PriQueue  ;# Interface queue type
set val(ifqlen)       50                       ;# max packet in ifq
set val(netif)        Phy/WirelessPhy          ;# network interface type
set val(mac)          Mac/802_11               ;# MAC type
set val(rp)           DSDV                     ;# ad-hoc routing protocol 
set val(nn)           2                        ;# number of mobilenodes

# Create a new simulation object
set ns [new Simulator]

## Define different colors for data flows (for NAM)
$ns color 1 Blue
$ns color 2 Red

# Set up tracing
set tf [open out.tr w]
$ns trace-all $tf

#Open the NAM trace file
set nf [open out.nam w]
$ns namtrace-all $nf

# Set topography
set topo	[new Topography]

#Create God
create-god $val(nn)

#Create 60 nodes 
set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]
set n4 [$ns node]
set n5 [$ns node]
set n6 [$ns node]
set n7 [$ns node]
set n8 [$ns node]
set n9 [$ns node]
set n10 [$ns node]
set n11 [$ns node]
set n12 [$ns node]
set n13 [$ns node]
set n14 [$ns node]
set n15 [$ns node]
set n16 [$ns node]
set n17 [$ns node]
set n18 [$ns node]
set n19 [$ns node]
set n20 [$ns node]
set n21 [$ns node]
set n22 [$ns node]
set n23 [$ns node]
set n24 [$ns node]
set n25 [$ns node]
set n26 [$ns node]
set n27 [$ns node]
set n28 [$ns node]
set n29 [$ns node]
set n30 [$ns node]
set n31 [$ns node]
set n32 [$ns node]
set n33 [$ns node]
set n34 [$ns node]
set n35 [$ns node]
set n36 [$ns node]
set n37 [$ns node]
set n38 [$ns node]
set n39 [$ns node]
set n40 [$ns node]
set n41 [$ns node]
set n42 [$ns node]
set n43 [$ns node]
set n44 [$ns node]
set n45 [$ns node]
set n46 [$ns node]
set n47 [$ns node]
set n48 [$ns node]
set n49 [$ns node]
set n50 [$ns node]
set n51 [$ns node]
set n52 [$ns node]
set n53 [$ns node]
set n54 [$ns node]
set n55 [$ns node]
set n56 [$ns node]
set n57 [$ns node]
set n58 [$ns node]
set n59 [$ns node]

# Create a wireless interface and attach it to the nodes
set wifi [$ns node]
$wifi add-interface $n0 802_11b 10Mb 20m
$wifi add-interface $n1 802_11b 10Mb 20m
$wifi add-interface $n2 802_11b 10Mb 20m
$wifi add-interface $n3 802_11b 10Mb 20m
$wifi add-interface $n4 802_11b 10Mb 20m
$wifi add-interface $n5 802_11b 10Mb 20m
$wifi add-interface $n6 802_11b 10Mb 20m
$wifi add-interface $n7 802_11b 10Mb 20m
$wifi add-interface $n8 802_11b 10Mb 20m
$wifi add-interface $n9 802_11b 10Mb 20m
$wifi add-interface $n10 802_11b 10Mb 20m
$wifi add-interface $n11 802_11b 10Mb 20m
$wifi add-interface $n12 802_11b 10Mb 20m
$wifi add-interface $n13 802_11b 10Mb 20m
$wifi add-interface $n14 802_11b 10Mb 20m
$wifi add-interface $n15 802_11b 10Mb 20m
$wifi add-interface $n16 802_11b 10Mb 20m
$wifi add-interface $n17 802_11b 10Mb 20m
$wifi add-interface $n18 802_11b 10Mb 20m
$wifi add-interface $n19 802_11b 10Mb 20m
$wifi add-interface $n20 802_11b 10Mb 20m
$wifi add-interface $n21 802_11b 10Mb 20m
$wifi add-interface $n22 802_11b 10Mb 20m
$wifi add-interface $n23 802_11b 10Mb 20m
$wifi add-interface $n24 802_11b 10Mb 20m
$wifi add-interface $n25 802_11b 10Mb 20m
$wifi add-interface $n26 802_11b 10Mb 20m
$wifi add-interface $n27 802_11b 10Mb 20m
$wifi add-interface $n28 802_11b 10Mb 20m
$wifi add-interface $n29 802_11b 10Mb 20m
$wifi add-interface $n30 802_11b 10Mb 20m
$wifi add-interface $n31 802_11b 10Mb 20m
$wifi add-interface $n32 802_11b 10Mb 20m
$wifi add-interface $n33 802_11b 10Mb 20m
$wifi add-interface $n34 802_11b 10Mb 20m
$wifi add-interface $n35 802_11b 10Mb 20m
$wifi add-interface $n36 802_11b 10Mb 20m
$wifi add-interface $n37 802_11b 10Mb 20m
$wifi add-interface $n38 802_11b 10Mb 20m
$wifi add-interface $n39 802_11b 10Mb 20m
$wifi add-interface $n40 802_11b 10Mb 20m
$wifi add-interface $n41 802_11b 10Mb 20m
$wifi add-interface $n42 802_11b 10Mb 20m
$wifi add-interface $n43 802_11b 10Mb 20m
$wifi add-interface $n44 802_11b 10Mb 20m
$wifi add-interface $n45 802_11b 10Mb 20m
$wifi add-interface $n46 802_11b 10Mb 20m
$wifi add-interface $n47 802_11b 10Mb 20m
$wifi add-interface $n48 802_11b 10Mb 20m
$wifi add-interface $n49 802_11b 10Mb 20m
$wifi add-interface $n50 802_11b 10Mb 20m
$wifi add-interface $n51 802_11b 10Mb 20m
$wifi add-interface $n52 802_11b 10Mb 20m
$wifi add-interface $n53 802_11b 10Mb 20m
$wifi add-interface $n54 802_11b 10Mb 20m
$wifi add-interface $n55 802_11b 10Mb 20m
$wifi add-interface $n56 802_11b 10Mb 20m
$wifi add-interface $n57 802_11b 10Mb 20m
$wifi add-interface $n58 802_11b 10Mb 20m
$wifi add-interface $n59 802_11b 10Mb 20m


# Set up node positions
$ns duplex-link-op $n0 $n1 orient right
$ns duplex-link-op $n1 $n2 orient left
$ns duplex-link-op $n2 $n3 orient right
$ns duplex-link-op $n3 $n4 orient left
$ns duplex-link-op $n4 $n5 orient right
$ns duplex-link-op $n5 $n6 orient left
$ns duplex-link-op $n6 $n7 orient right
$ns duplex-link-op $n7 $n8 orient left
$ns duplex-link-op $n8 $n9 orient right
$ns duplex-link-op $n9 $n10 orient left
$ns duplex-link-op $n10 $n11 orient right
$ns duplex-link-op $n11 $n12 orient left
$ns duplex-link-op $n12 $n13 orient right
$ns duplex-link-op $n13 $n14 orient left
$ns duplex-link-op $n14 $n15 orient right
$ns duplex-link-op $n15 $n16 orient left
$ns duplex-link-op $n16 $n17 orient right
$ns duplex-link-op $n17 $n18 orient left
$ns duplex-link-op $n18 $n19 orient right
$ns duplex-link-op $n19 $n20 orient left
$ns duplex-link-op $n20 $n21 orient right
$ns duplex-link-op $n21 $n22 orient left
$ns duplex-link-op $n22 $n23 orient right
$ns duplex-link-op $n23 $n24 orient left
$ns duplex-link-op $n24 $n25 orient right
$ns duplex-link-op $n25 $n26 orient left


# Create a UDP agent and attach it to node 0
set udp [new Agent/UDP]
$ns attach-agent $n0 $udp

# Create a CBR traffic source and attach it to the UDP agent
set cbr [new Application/Traffic/CBR]
$cbr attach-agent $udp

# Set up the traffic source parameters
$cbr set packetSize_ 500
$cbr set interval_ 0.5
$cbr set rate_ 2Mb

# Create a null traffic sink and attach it to node 2
set sink [new Agent/Null]
$ns attach-agent $n2 $sink

# Create a wireless channel and attach it to the wireless interface
set chan [new Channel/WirelessChannel]
$ns add-channel $chan $wifi

# Create a propagation model and attach it to the channel
set prop [new Propagation/TwoRayGround]
$prop set txPower_ 0.1
$ns propagation-model $prop $chan $n0 $n1 $n2

# Set up a wireless MAC layer protocol and attach it to the wireless interface
set mac [new Mac/802_11]
$mac set channel $chan
$mac set bitrate_ 11Mb
$mac set bssId_ 1
$mac set ssid_ adhoc
$wifi add-mac $mac

# Set up node mobility
$ns at 0.0 "$n0 setdest 200 200 10"
$ns at 0.0 "$n1 setdest 400 200 10"
$ns at 0.0 "$n2 setdest 600 200 10"
$ns at 10.0 "$n0 setdest 600 200 10"
$ns at 10.0 "$n1 setdest 200 200 10"
$ns at 10.0 "$n2 setdest 400 200 10"

# Set up simulation parameters
$ns node-config -adhocRouting DSDV
$ns rtproto DV
$ns run


