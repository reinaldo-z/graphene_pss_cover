set terminal mp color solid latex 11

set xlabel "{\\Large Photon Energy (eV)}"

set xtics nomirror
set ytics nomirror
set zeroaxis lw 1 lt 2 lc 0
# set label 1 "{\\Large C$_{16}$H$_{8}$-up}"   at graph 0.75, graph 0.15

set xtics 0.01
set ytics 0.2
set output "dsp-up.mp"
set key right top
set xrange [0.07:0.12]
set yrange [-0.6:0.4]
# set ylabel "{\\Large $D$}"

set label "\\Large Degree of spin polarization $\\mathcal{D}$ " at 0.089,-0.4

p   "data/up/res-spin_0-0.8eV/dsp.kk_x_8452_40-spin_scissor_0_Nc_18" u ($1+0.003):(0.813*2*$4/($2+$3+1.e-10)) title "$\\mathcal{D}^{x}$" w l lw 3.0 lt 1,\
    "data/up/res-spin_0-0.8eV/dsp.kk_y_8452_40-spin_scissor_0_Nc_18" u ($1+0.003):(0.813*2*$4/($2+$3+1.e-10)) title "$\\mathcal{D}^{y}$" w l lw 3.0 lt 2,\
    "data/up/res-spin_0-0.8eV/dsp.kk_z_8452_40-spin_scissor_0_Nc_18" u ($1+0.003):(0.813*2*$4/($2+$3+1.e-10)) title "$\\mathcal{D}^{z}$" w l lw 3.0 lt 7,\

