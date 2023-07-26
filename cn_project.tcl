
#===================================
#     Simulation parameters setup
#===================================
set val(stop)   10.0                         ;# time of simulation end

#===================================
#        Initialization        
#===================================
#Create a ns simulator
set ns [new Simulator]

#Open the NS trace file
set tracefile [open out.tr w]
$ns trace-all $tracefile

#Open the NAM trace file
set namfile [open out.nam w]
$ns namtrace-all $namfile

#===================================
#        Nodes Definition        
#===================================
#Create 10 nodes
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

#===================================
#        Links Definition        
#===================================
#Createlinks between nodes
$ns duplex-link $n0 $n3 100.0Mb 10ms DropTail
$ns queue-limit $n0 $n3 50
$ns duplex-link $n2 $n1 100.0Mb 10ms DropTail
$ns queue-limit $n2 $n1 50
$ns duplex-link $n2 $n0 100.0Mb 10ms DropTail
$ns queue-limit $n2 $n0 50
$ns duplex-link $n1 $n3 100.0Mb 10ms DropTail
$ns queue-limit $n1 $n3 50
$ns duplex-link $n2 $n4 100.0Mb 10ms DropTail
$ns queue-limit $n2 $n4 50
$ns duplex-link $n3 $n5 100.0Mb 10ms DropTail
$ns queue-limit $n3 $n5 50
$ns duplex-link $n2 $n5 100.0Mb 10ms DropTail
$ns queue-limit $n2 $n5 50
$ns duplex-link $n3 $n4 100.0Mb 10ms DropTail
$ns queue-limit $n3 $n4 50
$ns duplex-link $n6 $n4 100.0Mb 10ms DropTail
$ns queue-limit $n6 $n4 50
$ns duplex-link $n4 $n7 100.0Mb 10ms DropTail
$ns queue-limit $n4 $n7 50
$ns duplex-link $n4 $n8 100.0Mb 10ms DropTail
$ns queue-limit $n4 $n8 50
$ns duplex-link $n9 $n5 100.0Mb 10ms DropTail
$ns queue-limit $n9 $n5 50
$ns duplex-link $n5 $n8 100.0Mb 10ms DropTail
$ns queue-limit $n5 $n8 50
$ns duplex-link $n5 $n7 100.0Mb 10ms DropTail
$ns queue-limit $n5 $n7 50
$ns duplex-link $n5 $n6 100.0Mb 10ms DropTail
$ns queue-limit $n5 $n6 50
$ns duplex-link $n4 $n9 100.0Mb 10ms DropTail
$ns queue-limit $n4 $n9 50

#Give node position (for NAM)
#$ns duplex-link-op $n0 $n3 orient right-down
#$ns duplex-link-op $n2 $n1 orient right-up
#$ns duplex-link-op $n2 $n0 orient right-up
#$ns duplex-link-op $n1 $n3 orient right-down
#$ns duplex-link-op $n2 $n4 orient left-down
#$ns duplex-link-op $n3 $n5 orient left-down
#$ns duplex-link-op $n2 $n5 orient right-down
#$ns duplex-link-op $n3 $n4 orient left-down
#$ns duplex-link-op $n6 $n4 orient right-up
#$ns duplex-link-op $n4 $n7 orient right-down
#$ns duplex-link-op $n4 $n8 orient right-down
#$ns duplex-link-op $n9 $n5 orient left-up
#$ns duplex-link-op $n5 $n8 orient left-down
#$ns duplex-link-op $n5 $n7 orient left-down
#$ns duplex-link-op $n5 $n6 orient left-down
#$ns duplex-link-op $n4 $n9 orient right-down

#===================================
#        Agents Definition        
#===================================
#Setup a UDP connection
set udp0 [new Agent/UDP]
$ns attach-agent $n0 $udp0
set null11 [new Agent/Null]
$ns attach-agent $n6 $null11
$ns connect $udp0 $null11
$udp0 set packetSize_ 1500

#Setup a UDP connection
set udp1 [new Agent/UDP]
$ns attach-agent $n1 $udp1
set null10 [new Agent/Null]
$ns attach-agent $n6 $null10
$ns connect $udp1 $null10
$udp1 set packetSize_ 1500

#Setup a UDP connection
set udp2 [new Agent/UDP]
$ns attach-agent $n2 $udp2
set null14 [new Agent/Null]
$ns attach-agent $n6 $null14
$ns connect $udp2 $null14
$udp2 set packetSize_ 1500

#Setup a UDP connection
set udp3 [new Agent/UDP]
$ns attach-agent $n3 $udp3
set null13 [new Agent/Null]
$ns attach-agent $n6 $null13
$ns connect $udp3 $null13
$udp3 set packetSize_ 1500

#Setup a UDP connection
set udp4 [new Agent/UDP]
$ns attach-agent $n4 $udp4
set null15 [new Agent/Null]
$ns attach-agent $n6 $null15
$ns connect $udp4 $null15
$udp4 set packetSize_ 1500

#Setup a UDP connection
set udp5 [new Agent/UDP]
$ns attach-agent $n5 $udp5
set null12 [new Agent/Null]
$ns attach-agent $n6 $null12
$ns connect $udp5 $null12
$udp5 set packetSize_ 1500

#Setup a UDP connection
set udp34 [new Agent/UDP]
$ns attach-agent $n0 $udp34
set null20 [new Agent/Null]
$ns attach-agent $n7 $null20
$ns connect $udp34 $null20
$udp34 set packetSize_ 1500

#Setup a UDP connection
set udp35 [new Agent/UDP]
$ns attach-agent $n1 $udp35
set null23 [new Agent/Null]
$ns attach-agent $n8 $null23
$ns connect $udp35 $null23
$udp35 set packetSize_ 1500

#Setup a UDP connection
set udp36 [new Agent/UDP]
$ns attach-agent $n0 $udp36
set null26 [new Agent/Null]
$ns attach-agent $n8 $null26
$ns connect $udp36 $null26
$udp36 set packetSize_ 1500

#Setup a UDP connection
set udp37 [new Agent/UDP]
$ns attach-agent $n0 $udp37
set null33 [new Agent/Null]
$ns attach-agent $n9 $null33
$ns connect $udp37 $null33
$udp37 set packetSize_ 1500

#Setup a UDP connection
set udp38 [new Agent/UDP]
$ns attach-agent $n1 $udp38
set null21 [new Agent/Null]
$ns attach-agent $n7 $null21
$ns connect $udp38 $null21
$udp38 set packetSize_ 1500

#Setup a UDP connection
set udp40 [new Agent/UDP]
$ns attach-agent $n1 $udp40
set null29 [new Agent/Null]
$ns attach-agent $n9 $null29
$ns connect $udp40 $null29
$udp40 set packetSize_ 1500

#Setup a UDP connection
set udp41 [new Agent/UDP]
$ns attach-agent $n3 $udp41
set null18 [new Agent/Null]
$ns attach-agent $n7 $null18
$ns connect $udp41 $null18
$udp41 set packetSize_ 1500

#Setup a UDP connection
set udp42 [new Agent/UDP]
$ns attach-agent $n3 $udp42
set null27 [new Agent/Null]
$ns attach-agent $n8 $null27
$ns connect $udp42 $null27
$udp42 set packetSize_ 1500

#Setup a UDP connection
set udp43 [new Agent/UDP]
$ns attach-agent $n3 $udp43
set null30 [new Agent/Null]
$ns attach-agent $n9 $null30
$ns connect $udp43 $null30
$udp43 set packetSize_ 1500

#Setup a UDP connection
set udp44 [new Agent/UDP]
$ns attach-agent $n5 $udp44
set null17 [new Agent/Null]
$ns attach-agent $n7 $null17
$ns connect $udp44 $null17
$udp44 set packetSize_ 1500

#Setup a UDP connection
set udp45 [new Agent/UDP]
$ns attach-agent $n5 $udp45
set null24 [new Agent/Null]
$ns attach-agent $n8 $null24
$ns connect $udp45 $null24
$udp45 set packetSize_ 1500

#Setup a UDP connection
set udp46 [new Agent/UDP]
$ns attach-agent $n5 $udp46
set null31 [new Agent/Null]
$ns attach-agent $n9 $null31
$ns connect $udp46 $null31
$udp46 set packetSize_ 1500

#Setup a UDP connection
set udp47 [new Agent/UDP]
$ns attach-agent $n4 $udp47
set null25 [new Agent/Null]
$ns attach-agent $n8 $null25
$ns connect $udp47 $null25
$udp47 set packetSize_ 1500

#Setup a UDP connection
set udp48 [new Agent/UDP]
$ns attach-agent $n4 $udp48
set null19 [new Agent/Null]
$ns attach-agent $n7 $null19
$ns connect $udp48 $null19
$udp48 set packetSize_ 1500

#Setup a UDP connection
set udp49 [new Agent/UDP]
$ns attach-agent $n4 $udp49
set null32 [new Agent/Null]
$ns attach-agent $n9 $null32
$ns connect $udp49 $null32
$udp49 set packetSize_ 1500

#Setup a UDP connection
set udp50 [new Agent/UDP]
$ns attach-agent $n2 $udp50
set null22 [new Agent/Null]
$ns attach-agent $n8 $null22
$ns connect $udp50 $null22
$udp50 set packetSize_ 1500

#Setup a UDP connection
set udp52 [new Agent/UDP]
$ns attach-agent $n2 $udp52
set null16 [new Agent/Null]
$ns attach-agent $n7 $null16
$ns connect $udp52 $null16
$udp52 set packetSize_ 1500

#Setup a UDP connection
set udp53 [new Agent/UDP]
$ns attach-agent $n2 $udp53
set null28 [new Agent/Null]
$ns attach-agent $n9 $null28
$ns connect $udp53 $null28
$udp53 set packetSize_ 1500


#===================================
#        Applications Definition        
#===================================
#Setup a CBR Application over UDP connection
set cbr0 [new Application/Traffic/CBR]
$cbr0 attach-agent $udp0
$cbr0 set packetSize_ 1000
$cbr0 set rate_ 1.0Mb
$cbr0 set random_ null
$ns at 1.0 "$cbr0 start"
$ns at 10.0 "$cbr0 stop"

#Setup a CBR Application over UDP connection
set cbr1 [new Application/Traffic/CBR]
$cbr1 attach-agent $udp2
$cbr1 set packetSize_ 1000
$cbr1 set rate_ 1.0Mb
$cbr1 set random_ null
$ns at 1.0 "$cbr1 start"
$ns at 10.0 "$cbr1 stop"

#Setup a CBR Application over UDP connection
set cbr2 [new Application/Traffic/CBR]
$cbr2 attach-agent $udp1
$cbr2 set packetSize_ 1000
$cbr2 set rate_ 1.0Mb
$cbr2 set random_ null
$ns at 1.0 "$cbr2 start"
$ns at 10.0 "$cbr2 stop"

#Setup a CBR Application over UDP connection
set cbr3 [new Application/Traffic/CBR]
$cbr3 attach-agent $udp3
$cbr3 set packetSize_ 1000
$cbr3 set rate_ 1.0Mb
$cbr3 set random_ null
$ns at 1.0 "$cbr3 start"
$ns at 10.0 "$cbr3 stop"

#Setup a CBR Application over UDP connection
set cbr4 [new Application/Traffic/CBR]
$cbr4 attach-agent $udp5
$cbr4 set packetSize_ 1000
$cbr4 set rate_ 1.0Mb
$cbr4 set random_ null
$ns at 1.0 "$cbr4 start"
$ns at 10.0 "$cbr4 stop"

#Setup a CBR Application over UDP connection
set cbr5 [new Application/Traffic/CBR]
$cbr5 attach-agent $udp4
$cbr5 set packetSize_ 1000
$cbr5 set rate_ 1.0Mb
$cbr5 set random_ null
$ns at 1.0 "$cbr5 start"
$ns at 10.0 "$cbr5 stop"

#Setup a CBR Application over UDP connection
set cbr10 [new Application/Traffic/CBR]
$cbr10 attach-agent $udp34
$cbr10 set packetSize_ 1000
$cbr10 set rate_ 1.0Mb
$cbr10 set random_ null
$ns at 1.0 "$cbr10 start"
$ns at 10.0 "$cbr10 stop"

#Setup a CBR Application over UDP connection
set cbr11 [new Application/Traffic/CBR]
$cbr11 attach-agent $udp36
$cbr11 set packetSize_ 1000
$cbr11 set rate_ 1.0Mb
$cbr11 set random_ null
$ns at 1.0 "$cbr11 start"
$ns at 10.0 "$cbr11 stop"

#Setup a CBR Application over UDP connection
set cbr12 [new Application/Traffic/CBR]
$cbr12 attach-agent $udp37
$cbr12 set packetSize_ 1000
$cbr12 set rate_ 1.0Mb
$cbr12 set random_ null
$ns at 1.0 "$cbr12 start"
$ns at 10.0 "$cbr12 stop"

#Setup a CBR Application over UDP connection
set cbr13 [new Application/Traffic/CBR]
$cbr13 attach-agent $udp40
$cbr13 set packetSize_ 1000
$cbr13 set rate_ 1.0Mb
$cbr13 set random_ null
$ns at 1.0 "$cbr13 start"
$ns at 10.0 "$cbr13 stop"

#Setup a CBR Application over UDP connection
set cbr15 [new Application/Traffic/CBR]
$cbr15 attach-agent $udp35
$cbr15 set packetSize_ 1000
$cbr15 set rate_ 1.0Mb
$cbr15 set random_ null
$ns at 1.0 "$cbr15 start"
$ns at 10.0 "$cbr15 stop"

#Setup a CBR Application over UDP connection
set cbr16 [new Application/Traffic/CBR]
$cbr16 attach-agent $udp38
$cbr16 set packetSize_ 1000
$cbr16 set rate_ 1.0Mb
$cbr16 set random_ null
$ns at 1.0 "$cbr16 start"
$ns at 10.0 "$cbr16 stop"

#Setup a CBR Application over UDP connection
set cbr17 [new Application/Traffic/CBR]
$cbr17 attach-agent $udp42
$cbr17 set packetSize_ 1000
$cbr17 set rate_ 1.0Mb
$cbr17 set random_ null
$ns at 1.0 "$cbr17 start"
$ns at 10.0 "$cbr17 stop"

#Setup a CBR Application over UDP connection
set cbr18 [new Application/Traffic/CBR]
$cbr18 attach-agent $udp41
$cbr18 set packetSize_ 1000
$cbr18 set rate_ 1.0Mb
$cbr18 set random_ null
$ns at 1.0 "$cbr18 start"
$ns at 10.0 "$cbr18 stop"

#Setup a CBR Application over UDP connection
set cbr19 [new Application/Traffic/CBR]
$cbr19 attach-agent $udp43
$cbr19 set packetSize_ 1000
$cbr19 set rate_ 1.0Mb
$cbr19 set random_ null
$ns at 1.0 "$cbr19 start"
$ns at 10.0 "$cbr19 stop"

#Setup a CBR Application over UDP connection
set cbr20 [new Application/Traffic/CBR]
$cbr20 attach-agent $udp44
$cbr20 set packetSize_ 1000
$cbr20 set rate_ 1.0Mb
$cbr20 set random_ null
$ns at 1.0 "$cbr20 start"
$ns at 10.0 "$cbr20 stop"

#Setup a CBR Application over UDP connection
set cbr21 [new Application/Traffic/CBR]
$cbr21 attach-agent $udp45
$cbr21 set packetSize_ 1000
$cbr21 set rate_ 1.0Mb
$cbr21 set random_ null
$ns at 1.0 "$cbr21 start"
$ns at 10.0 "$cbr21 stop"

#Setup a CBR Application over UDP connection
set cbr22 [new Application/Traffic/CBR]
$cbr22 attach-agent $udp46
$cbr22 set packetSize_ 1000
$cbr22 set rate_ 1.0Mb
$cbr22 set random_ null
$ns at 1.0 "$cbr22 start"
$ns at 10.0 "$cbr22 stop"

#Setup a CBR Application over UDP connection
set cbr23 [new Application/Traffic/CBR]
$cbr23 attach-agent $udp49
$cbr23 set packetSize_ 1000
$cbr23 set rate_ 1.0Mb
$cbr23 set random_ null
$ns at 1.0 "$cbr23 start"
$ns at 10.0 "$cbr23 stop"

#Setup a CBR Application over UDP connection
set cbr24 [new Application/Traffic/CBR]
$cbr24 attach-agent $udp47
$cbr24 set packetSize_ 1000
$cbr24 set rate_ 1.0Mb
$cbr24 set random_ null
$ns at 1.0 "$cbr24 start"
$ns at 10.0 "$cbr24 stop"

#Setup a CBR Application over UDP connection
set cbr25 [new Application/Traffic/CBR]
$cbr25 attach-agent $udp48
$cbr25 set packetSize_ 1000
$cbr25 set rate_ 1.0Mb
$cbr25 set random_ null
$ns at 1.0 "$cbr25 start"
$ns at 10.0 "$cbr25 stop"

#Setup a CBR Application over UDP connection
set cbr26 [new Application/Traffic/CBR]
$cbr26 attach-agent $udp53
$cbr26 set packetSize_ 1000
$cbr26 set rate_ 1.0Mb
$cbr26 set random_ null
$ns at 1.0 "$cbr26 start"
$ns at 10.0 "$cbr26 stop"

#Setup a CBR Application over UDP connection
set cbr27 [new Application/Traffic/CBR]
$cbr27 attach-agent $udp50
$cbr27 set packetSize_ 1000
$cbr27 set rate_ 1.0Mb
$cbr27 set random_ null
$ns at 1.0 "$cbr27 start"
$ns at 10.0 "$cbr27 stop"

#Setup a CBR Application over UDP connection
set cbr28 [new Application/Traffic/CBR]
$cbr28 attach-agent $udp52
$cbr28 set packetSize_ 1000
$cbr28 set rate_ 1.0Mb
$cbr28 set random_ null
$ns at 1.0 "$cbr28 start"
$ns at 10.0 "$cbr28 stop"

$ns rtproto LS
#===================================
#        Termination        
#===================================
#Define a 'finish' procedure
proc finish {} {
    global ns tracefile namfile
    $ns flush-trace
    close $tracefile
    close $namfile
    exec nam out.nam &
    exit 0
}
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"
$ns run
