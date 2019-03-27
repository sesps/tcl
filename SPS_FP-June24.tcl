#  SpecTclGUI save file created Mon Jun 25 11:47:16 EDT 2018
#  SpecTclGui Version: 1.0
#      Author: Ron Fox (fox@nscl.msu.edu)

#New Tree Parameters:


#Modified Tree Parameters:


# Pseudo parameter definitions


# Tree variable definitions:


# Spectrum Definitions

catch {spectrum -delete FP-PL-LR}
spectrum FP-PL-LR 2 {adc1.03 adc1.04} {{0.000000 4095.000000 1024} {0.000000 4095.000000 1024}} long
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
catch {spectrum -delete e-de-pl-vs-wire}
spectrum e-de-pl-vs-wire 2 {adc1.03 adc1.01} {{0.000000 4095.000000 1024} {0.000000 4095.000000 1024}} long
catch {spectrum -delete fp-x-ede-gate}
spectrum fp-x-ede-gate 1 adc1.00 {{0.000000 4095.000000 4095}} long
catch {spectrum -delete fp-x-pl_high}
spectrum fp-x-pl_high 1 adc1.00 {{0.000000 4095.000000 1024}} long
catch {spectrum -delete fp-x-pl_mid}
spectrum fp-x-pl_mid 1 adc1.00 {{0.000000 4095.000000 1024}} long
catch {spectrum -delete fp-x-pl_mid-high}
spectrum fp-x-pl_mid-high 1 adc1.00 {{0.000000 4095.000000 1024}} long
catch {spectrum -delete fp-x-pl_top}
spectrum fp-x-pl_top 1 adc1.00 {{0.000000 4095.000000 1024}} long
catch {spectrum -delete fp-x-plvswirehigh}
spectrum fp-x-plvswirehigh 1 adc1.00 {{0.000000 4095.000000 1024}} long
catch {spectrum -delete fp-x-plvswirelow}
spectrum fp-x-plvswirelow 1 adc1.00 {{0.000000 4095.000000 1024}} long
catch {spectrum -delete sps-x-plastic-gate}
spectrum sps-x-plastic-gate 1 adc1.00 {{0.000000 4095.000000 4095}} long
catch {spectrum -delete tdc1.00}
spectrum tdc1.00 1 tdc1.00 {{0.000000 4095.000000 4096}} long
catch {spectrum -delete tdc1.01}
spectrum tdc1.01 1 tdc1.01 {{0.000000 4095.000000 4096}} long

# Gate definitions in reverse dependency order
 
gate contour_005 c {adc1.03 adc1.04 {{372.272736 292.214081} {432.316711 388.284454} {568.416443 432.316711} {1136.832886 416.304993} {1132.829956 264.193542} {476.348969 236.173019}}}
gate e-de-gate c {adc1.03 adc1.04 {{236.173019 148.108505} {744.545471 136.099701} {1184.868042 136.099701} {1332.976562 232.170090} {816.598267 316.231659} {304.222870 280.205292} {216.158356 260.190613}}}
gate pl-high c {adc1.03 adc1.04 {{792.580627 376.275665} {772.565979 296.217010} {940.689148 260.190613} {1016.744873 264.193542} {1100.806396 336.246338} {1100.806396 392.287384}}}
gate pl-mid c {adc1.03 adc1.04 {{276.202332 424.310852} {296.217010 344.252197} {420.307922 292.214081} {572.419373 296.217010} {656.480957 340.249268} {664.486816 420.307922} {556.407654 484.354828} {420.307922 488.357758}}}
gate pl-mid-high c {adc1.03 adc1.04 {{380.278595 292.214081} {860.630493 240.175949} {1128.827026 268.196472} {1104.809326 384.281525} {672.492676 416.304993} {468.343109 432.316711} {396.290314 348.255127}}}
gate pl-top c {adc1.03 adc1.04 {{124.090912 632.463318} {148.108505 500.366577} {224.164230 456.334320} {348.255127 536.392944} {360.263916 652.478027} {232.170090 672.492676}}}
gate plastic c {adc1.03 adc1.04 {{280.205292 1393.020508} {276.202332 980.718445} {376.275665 812.595337} {1148.841675 700.513184} {1829.340210 736.539612} {1961.436890 1148.841675}}}
gate plvswire-high c {adc1.03 adc1.01 {{256.187683 4070.982422} {256.187683 2425.777100} {452.331390 2137.565918} {628.460388 2665.953125} {680.498535 3506.568848} {616.451599 4002.932617} {440.322571 4054.970703}}}
gate plvswire-low c {adc1.03 adc1.01 {{804.589417 2245.645264} {836.612915 1541.129028} {1064.780029 1649.208252} {1092.800537 2557.873779} {1048.768311 3078.255127} {812.595337 3238.372314}}}

# Gate Applications: 

apply e-de-gate  fp-x-ede-gate
apply pl-high  fp-x-pl_high
apply pl-mid  fp-x-pl_mid
apply pl-mid-high  fp-x-pl_mid-high
apply pl-top  fp-x-pl_top
apply plvswire-high  fp-x-plvswirehigh
apply plvswire-low  fp-x-plvswirelow
apply plastic  sps-x-plastic-gate

#  filter definitions: ALL FILTERS ARE DISABLED!!!!!!!

