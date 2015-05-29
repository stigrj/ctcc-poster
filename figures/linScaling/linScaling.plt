set terminal postscript enhanced color portrait "Times-Roman,10"
set output "../linScaling.ps"

set multiplot
set xrange [0:200]
set yrange [0:1400]
set size 0.5,0.25
set key top left

set origin 0.0,0.7
set title 'Linear scaling'
set ylabel 'time(s)'
set xlabel 'Number of atoms'
plot 'hirao.dat' using 1:2 w lp lt 1 lw 1 lc 0 title 'Watson/Hirao',\
'mrcpp.dat' using 1:2 w lp lt 1 lw 1 lc 0 title 'MRCPP'

set origin 0.47,0.7
set xrange [0:200]
set yrange [0:250]
set title 'OpenMP performance'
set ylabel 'time(s)'
set xlabel 'Number of atoms'
plot 'mrcpp.dat' using 1:2 w lp lt 1 lw 1 lc 0 title 'OpenMP=1',\
'mrcpp.dat' using 1:3 w lp lt 1 lw 1 lc 0 title 'OpenMP=2',\
'mrcpp.dat' using 1:4 w lp lt 1 lw 1 lc 0 title 'OpenMP=4',\
'mrcpp.dat' using 1:5 w lp lt 1 lw 1 lc 0 title 'OpenMP=8'

