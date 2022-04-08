set terminal epslatex size 5in, 3in "fontsize" 42
set encoding utf8
set output 'Main.tex'
# set key left box
set grid
# set key samplen 2
# set key width -4
# set key height 0
set xlabel '$d$ ($q=5$)' offset 0,1.9
set xrange [48:256]
# set xtics('$5^5$' 5, '$5^{50}$' 50, '$5^{100}$' 100, '$5^{150}$' 150, '$5^{200}$' 200, '$5^{256}$' 256 ) offset 0,0.25
set xtics('$50$' 48, '$100$' 98, '$150$' 148, '$200$' 198, '$254$' 256) offset 0,0.8
set ylabel 'Minutes' offset 3.55,0
set yrange [0:4200]
# set ytics('$0$' 0, '$10$' 600, '$20$' 1200, '$30$' 1800, '$40$' 2400, '$50$' 3000, '$60$' 3600, '$70$' 4200) offset 0.25,0
set ytics('$0$' 0, '$20$' 1200, '$40$' 2400, '$60$' 3600) offset 0.85,0

#From Matlab 'fit(x,y,'poly4')
p1 = 0.000001692
p2 = -0.0003655
p3 = 0.02836
p4 = -0.7965
p5 = 5.671
f(x) = p1*x**4 + p2*x**3 + p3*x**2 + p4*x + p5
# plot 'ExpA_TimeSlopeData' u 1:2 title 'Grp Iso' lc rgb '#1800DD' pt 7 ps 1, 'ExpA_TimeFlatData' u 1:2 title '' lc rgb '#1800DD' pt 7 ps 1, f(x) title 'Lin Alg' lc rgb "black" lw 10 lt 3
plot 'ExpA_TimeSlopeData' u 1:2 title '' lc rgb '#1800DD' pt 7 ps 0.65, 'ExpA_TimeFlatData' u 1:2 title '' lc rgb '#1800DD' pt 7 ps 0.65
set output

