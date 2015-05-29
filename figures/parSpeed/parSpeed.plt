set terminal postscript enhanced color portrait "Times-Roman,10"
set output "../parSpeed.ps"

set multiplot
set xrange [0:10]
set yrange [0:10]
set size 0.5,0.25
set key top left

set origin 0.0,0.7
set title 'Parallel speedup OpenMP'
set ylabel 'speedup'
set xlabel 'Number of CPUs'
plot 'speedOMP.dat' using 1:1 w l lt 1 lw 2 lc 1 title 'Optimal',\
'speedOMP.dat' using 1:2 w lp lt 1 lw 1 lc 0 title 'OpenMP'

set key top left
set origin 0.47,0.7
set size 0.5,0.25
set xrange [0:600]
set yrange [0:600]
set title 'Parallel speedup MPI and hybrid MPI/OpenMP'
set ylabel 'speedup'
set xlabel 'Number of CPUs'
plot 'speedMPI.dat' using 1:1 w l lt 1 lw 2 lc 1 title 'Optimal',\
'speedMPI.dat' using 1:2 w lp lt 1 lw 1 lc 0 title 'MPI',\
'speedHybrid.dat' using 1:2 w lp lt 1 lw 1 lc 0 title 'MPI/OpenMP'
