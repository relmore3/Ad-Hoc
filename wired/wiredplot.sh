
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
#!/bin/bash

awk -f wired.awk wired.tr > wired

    gnuplot <<- EOF
        set xlabel "Time"
        set ylabel "Throughput"
        set title "Wired Network Simulation" 
        set term png
        set output "wired.png"
        plot "wired" using 1:2 with linespoints ls 3 linecolor "blue"
EOF
echo "plot saved under wired.png"
