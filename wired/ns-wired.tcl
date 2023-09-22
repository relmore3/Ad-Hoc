# 
# CPSC 4317
# SP2023
# NS2 Networking Project
# 20230428
#
# Andrew Hoffman
# Robert Elmore
# Johnny Do
#
# Wired Network Simulation
#
# http://nile.wpi.edu/NS/
#

#Create a simulator object
set ns [new Simulator]

## Define different colors for data flows (for NAM)
$ns color 1 Blue
$ns color 2 Red

# Open Trace files
set tf [open wired.tr w]
$ns trace-all $tf

#Open the NAM trace file
set nf [open wired.nam w]
$ns namtrace-all $nf

#Define a 'finish' procedure
proc finish {} {
        global ns nf tf
        $ns flush-trace
        
        #Close the NAM trace file
        close $nf
        close $tf
        
        #Execute NAM on the trace file
        exec nam wired.nam &
        exec sh wiredplot.sh &
        exit 0
        
}


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


## Create links between the nodes

# TCP
$ns duplex-link $n0 $n29 5Mb 2ms DropTail
$ns duplex-link $n1 $n29 5Mb 2ms DropTail
$ns duplex-link $n2 $n29 5Mb 2ms DropTail
$ns duplex-link $n3 $n29 5Mb 2ms DropTail
$ns duplex-link $n4 $n29 5Mb 2ms DropTail
$ns duplex-link $n5 $n29 5Mb 10ms DropTail
$ns duplex-link $n6 $n29 5Mb 10ms DropTail
$ns duplex-link $n7 $n29 5Mb 10ms DropTail
$ns duplex-link $n8 $n29 5Mb 10ms DropTail
$ns duplex-link $n9 $n29 5Mb 10ms DropTail
$ns duplex-link $n10 $n29 5Mb 10ms DropTail
$ns duplex-link $n11 $n29 10Mb 5ms DropTail
$ns duplex-link $n12 $n29 10Mb 5ms DropTail
$ns duplex-link $n13 $n29 10Mb 5ms DropTail



# UDP
$ns duplex-link $n14 $n29 10Mb 5ms DropTail
$ns duplex-link $n15 $n29 10Mb 5ms DropTail
$ns duplex-link $n16 $n29 10Mb 5ms DropTail
$ns duplex-link $n17 $n29 10Mb 10ms DropTail
$ns duplex-link $n18 $n29 10Mb 10ms DropTail
$ns duplex-link $n19 $n29 10Mb 10ms DropTail
$ns duplex-link $n20 $n29 10Mb 10ms DropTail
$ns duplex-link $n21 $n29 10Mb 10ms DropTail
$ns duplex-link $n22 $n29 1Mb 10ms DropTail
$ns duplex-link $n23 $n29 1Mb 10ms DropTail
$ns duplex-link $n24 $n29 1Mb 10ms DropTail
$ns duplex-link $n25 $n29 1Mb 10ms DropTail
$ns duplex-link $n26 $n29 1Mb 10ms DropTail
$ns duplex-link $n27 $n29 1Mb 10ms DropTail
$ns duplex-link $n28 $n29 1Mb 10ms DropTail


# Bottle Neck
$ns duplex-link $n29 $n30 5Mb 10ms DropTail


# Sink
$ns duplex-link $n30 $n31 1Mb 10ms DropTail
$ns duplex-link $n30 $n32 1Mb 10ms DropTail
$ns duplex-link $n30 $n33 1Mb 10ms DropTail
$ns duplex-link $n30 $n34 1Mb 10ms DropTail
$ns duplex-link $n30 $n35 2Mb 5ms DropTail
$ns duplex-link $n30 $n36 2Mb 5ms DropTail
$ns duplex-link $n30 $n37 2Mb 5ms DropTail
$ns duplex-link $n30 $n38 2Mb 5ms DropTail
$ns duplex-link $n30 $n39 2Mb 5ms DropTail
$ns duplex-link $n30 $n40 2Mb 5ms DropTail
$ns duplex-link $n30 $n41 2Mb 5ms DropTail
$ns duplex-link $n30 $n42 2Mb 5ms DropTail
$ns duplex-link $n30 $n43 2Mb 5ms DropTail
$ns duplex-link $n30 $n44 2Mb 5ms DropTail

# Null
$ns duplex-link $n30 $n45 2Mb 5ms DropTail
$ns duplex-link $n30 $n46 2Mb 5ms DropTail
$ns duplex-link $n30 $n47 2Mb 5ms DropTail
$ns duplex-link $n30 $n48 2Mb 5ms DropTail
$ns duplex-link $n30 $n49 2Mb 5ms DropTail
$ns duplex-link $n30 $n50 2Mb 5ms DropTail
$ns duplex-link $n30 $n51 2Mb 5ms DropTail
$ns duplex-link $n30 $n52 2Mb 5ms DropTail
$ns duplex-link $n30 $n53 2Mb 5ms DropTail
$ns duplex-link $n30 $n54 2Mb 5ms DropTail
$ns duplex-link $n30 $n55 2Mb 5ms DropTail
$ns duplex-link $n30 $n56 2Mb 5ms DropTail
$ns duplex-link $n30 $n57 2Mb 5ms DropTail
$ns duplex-link $n30 $n58 2Mb 5ms DropTail
$ns duplex-link $n30 $n59 2Mb 5ms DropTail



#Setup a UDP connection
set udp0 [new Agent/UDP]
$ns attach-agent $n14 $udp0
set udp1 [new Agent/UDP]
$ns attach-agent $n15 $udp1
set udp2 [new Agent/UDP]
$ns attach-agent $n16 $udp2
set udp3 [new Agent/UDP]
$ns attach-agent $n17 $udp3
set udp4 [new Agent/UDP]
$ns attach-agent $n18 $udp4
set udp5 [new Agent/UDP]
$ns attach-agent $n19 $udp5
set udp6 [new Agent/UDP]
$ns attach-agent $n20 $udp6
set udp7 [new Agent/UDP]
$ns attach-agent $n21 $udp7
set udp8 [new Agent/UDP]
$ns attach-agent $n22 $udp8
set udp9 [new Agent/UDP]
$ns attach-agent $n23 $udp9
set udp10 [new Agent/UDP]
$ns attach-agent $n24 $udp10
set udp11 [new Agent/UDP]
$ns attach-agent $n25 $udp11
set udp12 [new Agent/UDP]
$ns attach-agent $n26 $udp12
set udp13 [new Agent/UDP]
$ns attach-agent $n27 $udp13
set udp14 [new Agent/UDP]
$ns attach-agent $n28 $udp14



set null0 [new Agent/Null]
$ns attach-agent $n45 $null0
set null1 [new Agent/Null]
$ns attach-agent $n46 $null1
set null2 [new Agent/Null]
$ns attach-agent $n47 $null2
set null3 [new Agent/Null]
$ns attach-agent $n48 $null3
set null4 [new Agent/Null]
$ns attach-agent $n49 $null4
set null5 [new Agent/Null]
$ns attach-agent $n50 $null5
set null6 [new Agent/Null]
$ns attach-agent $n51 $null6
set null7 [new Agent/Null]
$ns attach-agent $n52 $null7
set null8 [new Agent/Null]
$ns attach-agent $n53 $null8
set null9 [new Agent/Null]
$ns attach-agent $n54 $null9
set null10 [new Agent/Null]
$ns attach-agent $n55 $null10
set null11 [new Agent/Null]
$ns attach-agent $n56 $null11
set null12 [new Agent/Null]
$ns attach-agent $n57 $null12
set null13 [new Agent/Null]
$ns attach-agent $n58 $null13
set null14 [new Agent/Null]
$ns attach-agent $n59 $null14
set null15 [new Agent/Null]

$ns connect $udp0 $null0 
$udp0 set fid_ 1
$ns connect $udp1 $null1 
$udp1 set fid_ 1
$ns connect $udp2 $null2 
$udp2 set fid_ 1
$ns connect $udp3 $null3
$udp3 set fid_ 1
$ns connect $udp4 $null4
$udp4 set fid_ 1
$ns connect $udp5 $null5
$udp5 set fid_ 1
$ns connect $udp6 $null6
$udp6 set fid_ 1
$ns connect $udp7 $null7
$udp7 set fid_ 1
$ns connect $udp8 $null8
$udp8 set fid_ 1
$ns connect $udp9 $null9
$udp9 set fid_ 1
$ns connect $udp10 $null10 
$udp10 set fid_ 1
$ns connect $udp11 $null11
$udp11 set fid_ 1
$ns connect $udp12 $null12 
$udp12 set fid_ 1
$ns connect $udp13 $null13
$udp13 set fid_ 1
$ns connect $udp14 $null14
$udp14 set fid_ 1

#Set Queue Size of link (n0-n20) to 10
$ns queue-limit $n29 $n30 10


# Monitor the queue for link (n2-n3). (for NAM)
$ns duplex-link-op $n29 $n30 queuePos 0.5
# $ns duplex-link-op $n45 $n46 queuePos 0.75


#Setup a TCP connection
set tcp0 [new Agent/TCP]
$tcp0 set class_ 2
$ns attach-agent $n0 $tcp0
set tcp1 [new Agent/TCP]
$tcp1 set class_ 2
$ns attach-agent $n1 $tcp1
set tcp2 [new Agent/TCP]
$tcp2 set class_ 2
$ns attach-agent $n2 $tcp2
set tcp3 [new Agent/TCP]
$tcp3 set class_ 2
$ns attach-agent $n3 $tcp3
set tcp4 [new Agent/TCP]
$tcp4 set class_ 2
$ns attach-agent $n4 $tcp4
set tcp5 [new Agent/TCP]
$tcp5 set class_ 2
$ns attach-agent $n5 $tcp5
set tcp6 [new Agent/TCP]
$tcp6 set class_ 2
$ns attach-agent $n6 $tcp6
set tcp7 [new Agent/TCP]
$tcp7 set class_ 2
$ns attach-agent $n7 $tcp7
set tcp8 [new Agent/TCP]
$tcp8 set class_ 2
$ns attach-agent $n8 $tcp8
set tcp9 [new Agent/TCP]
$tcp9 set class_ 2
$ns attach-agent $n9 $tcp9
set tcp10 [new Agent/TCP]
$tcp10 set class_ 2
$ns attach-agent $n10 $tcp10
set tcp11 [new Agent/TCP]
$tcp11 set class_ 2
$ns attach-agent $n11 $tcp11
set tcp12 [new Agent/TCP]
$tcp12 set class_ 2
$ns attach-agent $n12 $tcp12
set tcp13 [new Agent/TCP]
$tcp13 set class_ 2
$ns attach-agent $n13 $tcp13


set sink0 [new Agent/TCPSink]
$ns attach-agent $n31 $sink0
set sink1 [new Agent/TCPSink]
$ns attach-agent $n32 $sink1
set sink2 [new Agent/TCPSink]
$ns attach-agent $n33 $sink2
set sink3 [new Agent/TCPSink]
$ns attach-agent $n34 $sink3
set sink4 [new Agent/TCPSink]
$ns attach-agent $n35 $sink4
set sink5 [new Agent/TCPSink]
$ns attach-agent $n36 $sink5
set sink6 [new Agent/TCPSink]
$ns attach-agent $n37 $sink6
set sink7 [new Agent/TCPSink]
$ns attach-agent $n38 $sink7
set sink8 [new Agent/TCPSink]
$ns attach-agent $n39 $sink8
set sink9 [new Agent/TCPSink]
$ns attach-agent $n40 $sink9
set sink10 [new Agent/TCPSink]
$ns attach-agent $n41 $sink10
set sink11 [new Agent/TCPSink]
$ns attach-agent $n42 $sink11
set sink12 [new Agent/TCPSink]
$ns attach-agent $n43 $sink12
set sink13 [new Agent/TCPSink]
$ns attach-agent $n44 $sink13


$ns connect $tcp0 $sink0
$tcp0 set fid_ 2
$ns connect $tcp1 $sink1
$tcp1 set fid_ 2
$ns connect $tcp2 $sink2
$tcp2 set fid_ 2
$ns connect $tcp3 $sink3
$tcp3 set fid_ 2
$ns connect $tcp4 $sink4
$tcp4 set fid_ 2
$ns connect $tcp5 $sink5
$tcp5 set fid_ 2
$ns connect $tcp6 $sink6
$tcp6 set fid_ 2
$ns connect $tcp7 $sink7
$tcp7 set fid_ 2
$ns connect $tcp8 $sink8
$tcp8 set fid_ 2
$ns connect $tcp9 $sink9
$tcp9 set fid_ 2
$ns connect $tcp10 $sink10
$tcp10 set fid_ 2
$ns connect $tcp11 $sink11
$tcp11 set fid_ 2
$ns connect $tcp12 $sink12
$tcp12 set fid_ 2
$ns connect $tcp13 $sink13
$tcp13 set fid_ 2


#Setup a FTP over TCP connection
set ftp0 [new Application/FTP]
$ftp0 attach-agent $tcp0
$ftp0 set type_ FTP
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ftp1 set type_ FTP
set ftp2 [new Application/FTP]
$ftp2 attach-agent $tcp2
$ftp2 set type_ FTP
set ftp3 [new Application/FTP]
$ftp3 attach-agent $tcp3
$ftp3 set type_ FTP
set ftp4 [new Application/FTP]
$ftp4 attach-agent $tcp4
$ftp4 set type_ FTP
set ftp5 [new Application/FTP]
$ftp5 attach-agent $tcp5
$ftp5 set type_ FTP
set ftp6 [new Application/FTP]
$ftp6 attach-agent $tcp6
$ftp6 set type_ FTP
set ftp7 [new Application/FTP]
$ftp7 attach-agent $tcp7
$ftp7 set type_ FTP
set ftp8 [new Application/FTP]
$ftp8 attach-agent $tcp8
$ftp8 set type_ FTP
set ftp9 [new Application/FTP]
$ftp9 attach-agent $tcp9
$ftp9 set type_ FTP
set ftp10 [new Application/FTP]
$ftp10 attach-agent $tcp10
$ftp10 set type_ FTP
set ftp11 [new Application/FTP]
$ftp11 attach-agent $tcp11
$ftp11 set type_ FTP
set ftp12 [new Application/FTP]
$ftp12 attach-agent $tcp12
$ftp12 set type_ FTP
set ftp13 [new Application/FTP]
$ftp13 attach-agent $tcp13
$ftp13 set type_ FTP




# Setup a CBR over UDP connection
set cbr0 [new Application/Traffic/CBR]
$cbr0 attach-agent $udp0
set cbr1 [new Application/Traffic/CBR]
$cbr1 attach-agent $udp1
set cbr2 [new Application/Traffic/CBR]
$cbr2 attach-agent $udp2
set cbr3 [new Application/Traffic/CBR]
$cbr3 attach-agent $udp3
set cbr4 [new Application/Traffic/CBR]
$cbr4 attach-agent $udp4
set cbr5 [new Application/Traffic/CBR]
$cbr5 attach-agent $udp5
set cbr6 [new Application/Traffic/CBR]
$cbr6 attach-agent $udp6
set cbr7 [new Application/Traffic/CBR]
$cbr7 attach-agent $udp7
set cbr8 [new Application/Traffic/CBR]
$cbr8 attach-agent $udp8
set cbr9 [new Application/Traffic/CBR]
$cbr9 attach-agent $udp9
set cbr10 [new Application/Traffic/CBR]
$cbr10 attach-agent $udp10
set cbr11 [new Application/Traffic/CBR]
$cbr11 attach-agent $udp11
set cbr12 [new Application/Traffic/CBR]
$cbr12 attach-agent $udp12
set cbr13 [new Application/Traffic/CBR]
$cbr13 attach-agent $udp13
set cbr14 [new Application/Traffic/CBR]
$cbr14 attach-agent $udp14


$cbr0 set type_ CBR
$cbr0 set packet_size_ 1000
$cbr0 set rate_ 0.1mb
$cbr0 set random_ false
$cbr1 set type_ CBR
$cbr1 set packet_size_ 1000
$cbr1 set rate_ 0.1mb
$cbr1 set random_ false
$cbr2 set type_ CBR
$cbr2 set packet_size_ 1000
$cbr2 set rate_ 0.1mb
$cbr2 set random_ false
$cbr3 set type_ CBR
$cbr3 set packet_size_ 1000
$cbr3 set rate_ 0.1mb
$cbr3 set random_ false
$cbr4 set type_ CBR
$cbr4 set packet_size_ 1000
$cbr4 set rate_ 0.1mb
$cbr4 set random_ false
$cbr5 set type_ CBR
$cbr5 set packet_size_ 1000
$cbr5 set rate_ 0.1mb
$cbr5 set random_ false
$cbr6 set type_ CBR
$cbr6 set packet_size_ 1000
$cbr6 set rate_ 0.1mb
$cbr6 set random_ false
$cbr7 set type_ CBR
$cbr7 set packet_size_ 1000
$cbr7 set rate_ 0.1mb
$cbr7 set random_ false
$cbr8 set type_ CBR
$cbr8 set packet_size_ 1000
$cbr8 set rate_ 0.1mb
$cbr8 set random_ false
$cbr9 set type_ CBR
$cbr9 set packet_size_ 1000
$cbr9 set rate_ 0.1mb
$cbr9 set random_ false
$cbr10 set type_ CBR
$cbr10 set packet_size_ 1000
$cbr10 set rate_ 0.1mb
$cbr10 set random_ false
$cbr11 set type_ CBR
$cbr11 set packet_size_ 1000
$cbr11 set rate_ 0.1mb
$cbr11 set random_ false
$cbr12 set type_ CBR
$cbr12 set packet_size_ 1000
$cbr12 set rate_ 0.1mb
$cbr12 set random_ false
$cbr13 set type_ CBR
$cbr13 set packet_size_ 1000
$cbr13 set rate_ 0.1mb
$cbr13 set random_ false


#Schedule events for the CBR and FTP agents
$ns at 5 "$cbr0 start"
$ns at 7 "$cbr1 start"
$ns at 10 "$cbr2 start"
$ns at 12 "$cbr3 start"
$ns at 15 "$cbr4 start"
$ns at 17 "$cbr5 start"
$ns at 20 "$cbr6 start"
$ns at 22 "$cbr7 start"
$ns at 25 "$cbr8 start"
$ns at 30 "$cbr9 start"
$ns at 32 "$cbr10 start"
$ns at 35 "$cbr11 start"
$ns at 37 "$cbr12 start"
$ns at 40 "$cbr13 start"
$ns at 42 "$cbr14 start"
$ns at 4 "$ftp0 start"
$ns at 8 "$ftp1 start"
$ns at 1 "$ftp2 start"
$ns at 2 "$ftp3 start"
$ns at 3 "$ftp4 start"
$ns at 4 "$ftp5 start"
$ns at 5 "$ftp6 start"
$ns at 6 "$ftp7 start"
$ns at 7 "$ftp8 start"
$ns at 10 "$ftp9 start"
$ns at 11 "$ftp10 start"
$ns at 12 "$ftp11 start"
$ns at 13 "$ftp12 start"
$ns at 14 "$ftp13 start"
# $ns at 80 "$ftp0 stop"
# $ns at 82 "$ftp1 stop"
# $ns at 85 "$ftp2 stop"
# $ns at 88 "$ftp3 stop"
# $ns at 90 "$ftp4 stop"
# $ns at 91 "$ftp5 stop"
# $ns at 92 "$ftp6 stop"
# $ns at 93 "$ftp7 stop"
# $ns at 94 "$ftp8 stop"
# $ns at 95 "$ftp9 stop"
# $ns at 96 "$ftp10 stop"
# $ns at 97 "$ftp11 stop"
# $ns at 98 "$ftp12 stop"
# $ns at 99 "$ftp13 stop"
# $ns at 70 "$cbr0 stop"
# $ns at 72 "$cbr1 stop"
# $ns at 75 "$cbr2 stop"
# $ns at 77 "$cbr3 stop"
# $ns at 80 "$cbr4 stop"
# $ns at 82 "$cbr5 stop"
# $ns at 85 "$cbr6 stop"
# $ns at 87 "$cbr7 stop"
# $ns at 90 "$cbr8 stop"
# $ns at 91 "$cbr9 stop"
# $ns at 92 "$cbr10 stop"
# $ns at 93 "$cbr11 stop"
# $ns at 94 "$cbr12 stop"
# $ns at 95 "$cbr13 stop"
# $ns at 96 "$cbr14 stop"


#Detach tcp and sink agents (not really necessary)
# $ns at 2.5 "$ns detach-agent $n0 $tcp ; $ns detach-agent $n49 $sink"

#Call the finish procedure after 5 seconds of simulation time
$ns at 100.0 "finish"

#Print CBR packet size and interval
puts "CBR packet size = [$cbr0 set packet_size_]"
puts "CBR interval = [$cbr0 set interval_]"

#Run the simulation
$ns run



