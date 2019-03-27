#  SpecTclGUI save file created Fri Jul 20 10:14:42 EDT 2018
#  SpecTclGui Version: 1.0
#      Author: Ron Fox (fox@nscl.msu.edu)

#New Tree Parameters:

catch {treeparameter -create fp_plane1_tdiff -4095 4095 4096 {{}}}
catch {treeparameter -create fp_plane1_tsum 0 8191 4096 {{}}}
catch {treeparameter -create fp_plane2_tdiff -4095 4095 4096 {{}}}
catch {treeparameter -create fp_plane2_tsum 0 8191 4096 {{}}}
catch {treeparameter -create sps-X-ave 0 4095 4095 {{}}}
catch {treeparameter -create sps-X-diff 0 4095 4095 {{}}}
catch {treeparameter -create sps-X-sum 0 4095 4095 {{}}}

#Modified Tree Parameters:


# Pseudo parameter definitions

catch {pseudo -delete sps-X-sum}
pseudo sps-X-sum {adc1.00 adc1.09} { return [expr (${adc1.00}>10 && ${adc1.00}<3800 && ${adc1.09}<3800 && ${adc1.09}>10) ? (${adc1.00} + ${adc1.09}) : -500 ]}

catch {pseudo -delete fp_plane1_tsum}
pseudo fp_plane1_tsum {adc1.00 adc1.01} { return [expr (${adc1.00}>10 && ${adc1.00}<3800 && ${adc1.01}<3800 && ${adc1.01}>10) ? (${adc1.00} + ${adc1.01}) : -500 ]}

catch {pseudo -delete fp_plane1_tdiff}
pseudo fp_plane1_tdiff {adc1.00 adc1.01} { return [expr (${adc1.00}>10 && ${adc1.00}<3800 && ${adc1.01}<3800 && ${adc1.01}>10) ? (${adc1.01} - ${adc1.00}) : -5000 ]}

catch {pseudo -delete fp_plane2_tsum}
pseudo fp_plane2_tsum {adc1.02 adc1.03} { return [expr (${adc1.02}>10 && ${adc1.02}<3800 && ${adc1.03}<3800 && ${adc1.03}>10) ? (${adc1.02} + ${adc1.03}) : -500 ]}

catch {pseudo -delete fp_plane2_tdiff}
pseudo fp_plane2_tdiff {adc1.02 adc1.03} { return [expr (${adc1.02}>10 && ${adc1.02}<3800 && ${adc1.03}<3800 && ${adc1.03}>10) ? (${adc1.03} - ${adc1.02}) : -5000 ]}

catch {pseudo -delete sps-X-diff}
pseudo sps-X-diff {fp_plane1_tdiff fp_plane2_tdiff} { return [expr ( ${fp_plane1_tdiff}>-3800 && ${fp_plane1_tdiff}<3800 && ${fp_plane2_tdiff}>-3800 && ${fp_plane2_tdiff}<3800 ? ( ${fp_plane1_tdiff} - ${fp_plane2_tdiff} ) : -5000 ) ]}

catch {pseudo -delete sps-X-ave}
pseudo sps-X-ave {fp_plane1_tdiff fp_plane2_tdiff} { return [expr ( ${fp_plane1_tdiff}>-3800 && ${fp_plane1_tdiff}<3800 && ${fp_plane2_tdiff}>-3800 && ${fp_plane2_tdiff}<3800 ? ((${fp_plane1_tdiff} + ${fp_plane2_tdiff})/2 ): -5000  )]}


# Tree variable definitions:


# Spectrum Definitions

spectrum adc1.00 1 adc1.00 {{0.000000 4095.000000 4096}} long
spectrum adc1.01 1 adc1.01 {{0.000000 4095.000000 4096}} long
spectrum adc1.02 1 adc1.02 {{0.000000 4095.000000 4096}} long
spectrum adc1.03 1 adc1.03 {{0.000000 4095.000000 4096}} long
spectrum adc1.04 1 adc1.04 {{0.000000 4095.000000 4096}} long
spectrum adc1.05 1 adc1.05 {{0.000000 4095.000000 4096}} long
spectrum adc1.06 1 adc1.06 {{0.000000 4095.000000 4096}} long
spectrum adc1.07 1 adc1.07 {{0.000000 4095.000000 4096}} long
spectrum adc1.08 1 adc1.08 {{0.000000 4095.000000 4096}} long
spectrum adc1.09 1 adc1.09 {{0.000000 4095.000000 4096}} long
spectrum adc1_summ s {adc1.00 adc1.01 adc1.02 adc1.03} {{0.000000 4095.000000 4096}} long
spectrum e-de 2 {adc1.03 adc1.01} {{0.000000 4095.000000 1024} {0.000000 4095.000000 1024}} long
spectrum e-de-1 2 {adc1.03 adc1.02} {{0.000000 4095.000000 1024} {0.000000 4095.000000 1024}} long
spectrum ede-4vs2 2 {adc1.04 adc1.02} {{0.000000 4095.000000 1024} {0.000000 4095.000000 1024}} long
spectrum fp1_diffsum 2 {fp_plane1_tdiff fp_plane1_tsum} {{-4095.000000 4095.000000 256} {0.000000 8191.000000 256}} long
spectrum fp1_tdiff 1 fp_plane1_tdiff {{-4095.000000 4095.000000 4096}} long
spectrum fp1_tsum 1 fp_plane1_tsum {{0.000000 8191.000000 4096}} long
spectrum fp2_diffsum 2 {fp_plane2_tdiff fp_plane2_tsum} {{-4095.000000 4095.000000 256} {0.000000 8191.000000 256}} long
spectrum fp2_tdiff 1 fp_plane2_tdiff {{-4095.000000 4095.000000 4096}} long
spectrum fp2_tsum 1 fp_plane2_tsum {{0.000000 8191.000000 4096}} long
spectrum front_x-back_x 2 {adc1.00 adc1.09} {{0.000000 4095.000000 1024} {0.000000 4095.000000 1024}} long
spectrum plane1-gated 1 adc1.00 {{0.000000 4095.000000 1024}} long
spectrum pps-x-gate-ede1 1 adc1.00 {{0.000000 4095.000000 4095}} long
spectrum sps-BX-diff 2 {adc1.00 sps-X-diff} {{0.000000 4095.000000 1024} {0.000000 4095.000000 1024}} long
spectrum sps-x-gate-ede 1 adc1.00 {{0.000000 4095.000000 4095}} long
spectrum sps-x-gateedelow 1 adc1.00 {{0.000000 4095.000000 4095}} long
spectrum sps-x-protons 1 adc1.00 {{0.000000 4095.000000 4095}} long
spectrum sps-x-theta 2 {sps-X-ave sps-X-diff} {{-4095.000000 4095.000000 1024} {-1024.000000 0.000000 1024}} long
spectrum sps-x_ave 1 sps-X-ave {{-4095.000000 4095.000000 4095}} long
spectrum sps-x_diff 1 sps-X-diff {{-4095.000000 4095.000000 4095}} long
spectrum spsX--sum_diff 2 {sps-X-sum sps-X-diff} {{0.000000 4095.000000 1024} {0.000000 4095.000000 1024}} long
spectrum sps_x_theta 2 {sps-X-ave sps-X-diff} {{-4095.000000 4095.000000 1024} {-4095.000000 4095.000000 1024}} long
spectrum tdc1.00 1 tdc1.00 {{0.000000 4095.000000 4096}} long
spectrum tdc1.01 1 tdc1.01 {{0.000000 4095.000000 4096}} long

# Gate definitions in reverse dependency order
 
gate e-de-protons c {adc1.03 adc1.01 {{420.307922 2053.504395} {516.378296 1469.076294} {836.612915 1721.260986} {1008.739014 2205.615723} {1252.917847 2998.196533} {1260.923706 3550.601074} {1100.806396 3742.741943} {596.436951 3690.703857}}}
gate ede-gate c {adc1.03 adc1.01 {{48.035191 1252.917847} {32.023460 924.677429} {52.038124 600.439880} {168.123169 484.354828} {332.243408 808.592346} {304.222870 1124.824097} {216.158356 1377.008789}}}
gate gate-e-de1 c {adc1.03 adc1.02 {{300.219940 3794.780029} {240.175949 2085.527832} {580.425232 1513.108521} {2145.571777 1028.753662} {2357.727295 1809.325562} {1733.269775 3850.821045}}}
gate gate-ede c {adc1.03 adc1.01 {{68.049850 1276.935425} {560.410583 1352.991211} {1224.897339 1517.111450} {1497.096802 1429.046875} {1733.269775 1060.777100} {1729.266846 540.395874} {1577.155396 408.299133} {400.293243 316.231659} {76.055717 600.439880} {44.032257 840.615845}}}
gate gate-ede-low c {adc1.03 adc1.01 {{224.164230 536.392944} {952.697937 328.240479} {1773.299072 404.296173} {2097.536621 580.425232} {2097.536621 976.715515} {792.580627 1272.932495} {188.137833 1272.932495}}}
gate low-peak c {adc1.00 adc1.09 {{672.492676 156.114365} {672.492676 68.049850} {1649.208252 68.049850} {1681.231689 196.143692}}}

# Gate Applications: 

apply low-peak  plane1-gated
apply gate-e-de1  pps-x-gate-ede1
apply gate-ede  sps-x-gate-ede
apply gate-ede-low  sps-x-gateedelow
apply e-de-protons  sps-x-protons

#  filter definitions: ALL FILTERS ARE DISABLED!!!!!!!


#  - Parameter tab layout: 

set parameter(select) 1
set parameter(Array)  false

#-- Variable tab layout

set variable(select) 1
set variable(Array)  0
