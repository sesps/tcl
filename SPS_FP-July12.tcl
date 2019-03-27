#  SpecTclGUI save file created Thu Jul 12 15:47:13 EDT 2018
#  SpecTclGui Version: 1.0
#      Author: Ron Fox (fox@nscl.msu.edu)

#New Tree Parameters:


#Modified Tree Parameters:


# Pseudo parameter definitions


# Tree variable definitions:


# Spectrum Definitions

catch {spectrum -delete adc1.00}
spectrum adc1.00 1 adc1.00 {{0.000000 4095.000000 4096}} long
catch {spectrum -delete adc1.01}
spectrum adc1.01 1 adc1.01 {{0.000000 4095.000000 4096}} long
catch {spectrum -delete adc1.02}
spectrum adc1.02 1 adc1.02 {{0.000000 4095.000000 4096}} long
catch {spectrum -delete adc1.03}
spectrum adc1.03 1 adc1.03 {{0.000000 4095.000000 4096}} long
catch {spectrum -delete adc1.04}
spectrum adc1.04 1 adc1.04 {{0.000000 4095.000000 4096}} long
catch {spectrum -delete adc1.05}
spectrum adc1.05 1 adc1.05 {{0.000000 4095.000000 4096}} long
catch {spectrum -delete adc1.06}
spectrum adc1.06 1 adc1.06 {{0.000000 4095.000000 4096}} long
catch {spectrum -delete adc1.07}
spectrum adc1.07 1 adc1.07 {{0.000000 4095.000000 4096}} long
catch {spectrum -delete adc1.08}
spectrum adc1.08 1 adc1.08 {{0.000000 4095.000000 4096}} long
catch {spectrum -delete adc1.09}
spectrum adc1.09 1 adc1.09 {{0.000000 4095.000000 4096}} long
catch {spectrum -delete e-de}
spectrum e-de 2 {adc1.03 adc1.01} {{0.000000 4095.000000 1024} {0.000000 4095.000000 1024}} long
catch {spectrum -delete e-de-1}
spectrum e-de-1 2 {adc1.03 adc1.02} {{0.000000 4095.000000 1024} {0.000000 4095.000000 1024}} long
catch {spectrum -delete ede-4vs2}
spectrum ede-4vs2 2 {adc1.04 adc1.02} {{0.000000 4095.000000 1024} {0.000000 4095.000000 1024}} long
catch {spectrum -delete front_x-back_x}
spectrum front_x-back_x 2 {adc1.00 adc1.09} {{0.000000 4095.000000 1024} {0.000000 4095.000000 1024}} long
catch {spectrum -delete plane1-gated}
spectrum plane1-gated 1 adc1.00 {{0.000000 4095.000000 1024}} long
catch {spectrum -delete pps-x-gate-ede1}
spectrum pps-x-gate-ede1 1 adc1.00 {{0.000000 4095.000000 4095}} long
catch {spectrum -delete sps-x-gate-ede}
spectrum sps-x-gate-ede 1 adc1.00 {{0.000000 4095.000000 4095}} long
catch {spectrum -delete sps-x-gateedelow}
spectrum sps-x-gateedelow 1 adc1.00 {{0.000000 4095.000000 4095}} long
catch {spectrum -delete sps-x-protons}
spectrum sps-x-protons 1 adc1.00 {{0.000000 4095.000000 4095}} long
catch {spectrum -delete tdc1.00}
spectrum tdc1.00 1 tdc1.00 {{0.000000 4095.000000 4096}} long
catch {spectrum -delete tdc1.01}
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

