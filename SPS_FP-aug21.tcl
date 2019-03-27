#  SpecTclGUI save file created Tue Aug 21 13:49:01 EDT 2018
#  SpecTclGui Version: 1.0
#      Author: Ron Fox (fox@nscl.msu.edu)

#New Tree Parameters:

catch {treeparameter -create fp_plane1_tdiff -4095 4095 4096 {{}}}
catch {treeparameter -create fp_plane1_tsum 0 8191 4096 {{}}}
catch {treeparameter -create fp_plane2_tdiff -4095 4095 4096 {{}}}
catch {treeparameter -create fp_plane2_tsum 0 8191 4096 {{}}}
catch {treeparameter -create fp_plastic_esum 0 4095 4096 {{}}}
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
pseudo sps-X-ave {fp_plane1_tdiff fp_plane2_tdiff} { return [expr ( ${fp_plane1_tdiff}>-3800 && ${fp_plane1_tdiff}<3800 && ${fp_plane2_tdiff}>-3800 && ${fp_plane2_tdiff}<3800 ? ( ( (${fp_plane1_tdiff} * 0.8 ) + ( ${fp_plane2_tdiff} * 0.2  ) )  ): -5000  )]}

catch {pseudo -delete fp_plastic_esum}
pseudo fp_plastic_esum {adc1.06 adc1.07} { return [expr (${adc1.06}>100 && ${adc1.06}<3800 && ${adc1.07}<3800 && ${adc1.07}>100) ? (${adc1.06} + ${adc1.07}) : -500 ]}


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
spectrum adc1.10 1 adc1.10 {{0.000000 4095.000000 4096}} long
spectrum adc1.11 1 adc1.11 {{0.000000 4095.000000 4096}} long
spectrum adc1.12 1 adc1.12 {{0.000000 4095.000000 4096}} long
spectrum adc1.13 1 adc1.13 {{0.000000 4095.000000 4096}} long
spectrum adc1.14 1 adc1.14 {{0.000000 4095.000000 4096}} long
spectrum adc1.15 1 adc1.15 {{0.000000 4095.000000 4096}} long
spectrum adc1.16 1 adc1.16 {{0.000000 4095.000000 4096}} long
spectrum adc1.17 1 adc1.17 {{0.000000 4095.000000 4096}} long
spectrum adc1.18 1 adc1.18 {{0.000000 4095.000000 4096}} long
spectrum adc1.19 1 adc1.19 {{0.000000 4095.000000 4096}} long
spectrum adc1.20 1 adc1.20 {{0.000000 4095.000000 4096}} long
spectrum adc1.21 1 adc1.21 {{0.000000 4095.000000 4096}} long
spectrum adc1.22 1 adc1.22 {{0.000000 4095.000000 4096}} long
spectrum adc1.23 1 adc1.23 {{0.000000 4095.000000 4096}} long
spectrum adc1.24 1 adc1.24 {{0.000000 4095.000000 4096}} long
spectrum adc1.25 1 adc1.25 {{0.000000 4095.000000 4096}} long
spectrum adc1.26 1 adc1.26 {{0.000000 4095.000000 4096}} long
spectrum adc1.27 1 adc1.27 {{0.000000 4095.000000 4096}} long
spectrum adc1.28 1 adc1.28 {{0.000000 4095.000000 4096}} long
spectrum adc1.29 1 adc1.29 {{0.000000 4095.000000 4096}} long
spectrum adc1.30 1 adc1.30 {{0.000000 4095.000000 4096}} long
spectrum adc1.31 1 adc1.31 {{0.000000 4095.000000 4096}} long
spectrum adc2.00 1 adc2.00 {{0.000000 4095.000000 4096}} long
spectrum adc2.01 1 adc2.01 {{0.000000 4095.000000 4096}} long
spectrum adc2.02 1 adc2.02 {{0.000000 4095.000000 4096}} long
spectrum adc2.03 1 adc2.03 {{0.000000 4095.000000 4096}} long
spectrum adc2.04 1 adc2.04 {{0.000000 4095.000000 4096}} long
spectrum adc2.05 1 adc2.05 {{0.000000 4095.000000 4096}} long
spectrum adc2.06 1 adc2.06 {{0.000000 4095.000000 4096}} long
spectrum adc2.07 1 adc2.07 {{0.000000 4095.000000 4096}} long
spectrum adc2.08 1 adc2.08 {{0.000000 4095.000000 4096}} long
spectrum adc2.09 1 adc2.09 {{0.000000 4095.000000 4096}} long
spectrum adc2.10 1 adc2.10 {{0.000000 4095.000000 4096}} long
spectrum adc2.11 1 adc2.11 {{0.000000 4095.000000 4096}} long
spectrum adc2.12 1 adc2.12 {{0.000000 4095.000000 4096}} long
spectrum adc2.13 1 adc2.13 {{0.000000 4095.000000 4096}} long
spectrum adc2.14 1 adc2.14 {{0.000000 4095.000000 4096}} long
spectrum adc2.15 1 adc2.15 {{0.000000 4095.000000 4096}} long
spectrum adc2.16 1 adc2.16 {{0.000000 4095.000000 4096}} long
spectrum adc2.17 1 adc2.17 {{0.000000 4095.000000 4096}} long
spectrum adc2.18 1 adc2.18 {{0.000000 4095.000000 4096}} long
spectrum adc2.19 1 adc2.19 {{0.000000 4095.000000 4096}} long
spectrum adc2.20 1 adc2.20 {{0.000000 4095.000000 4096}} long
spectrum adc2.21 1 adc2.21 {{0.000000 4095.000000 4096}} long
spectrum adc2.22 1 adc2.22 {{0.000000 4095.000000 4096}} long
spectrum adc2.23 1 adc2.23 {{0.000000 4095.000000 4096}} long
spectrum adc2.24 1 adc2.24 {{0.000000 4095.000000 4096}} long
spectrum adc2.25 1 adc2.25 {{0.000000 4095.000000 4096}} long
spectrum adc2.26 1 adc2.26 {{0.000000 4095.000000 4096}} long
spectrum adc2.27 1 adc2.27 {{0.000000 4095.000000 4096}} long
spectrum adc2.28 1 adc2.28 {{0.000000 4095.000000 4096}} long
spectrum adc2.29 1 adc2.29 {{0.000000 4095.000000 4096}} long
spectrum adc2.30 1 adc2.30 {{0.000000 4095.000000 4096}} long
spectrum adc2.31 1 adc2.31 {{0.000000 4095.000000 4096}} long
spectrum adc2_sum s {adc2.00 adc2.01 adc2.02 adc2.03 adc2.04 adc2.05 adc2.06 adc2.07 adc2.08 adc2.09 adc2.10 adc2.11 adc2.12 adc2.13 adc2.14 adc2.15 adc2.16 adc2.17 adc2.10 adc2.18 adc2.19 adc2.20 adc2.21 adc2.22 adc2.23 adc2.24 adc2.25 adc2.26 adc2.27 adc2.28 adc2.29 adc2.30 adc2.31} {{0.000000 4095.000000 4096}} long
spectrum adc3.00 1 adc3.00 {{0.000000 4095.000000 4096}} long
spectrum adc3.01 1 adc3.01 {{0.000000 4095.000000 4096}} long
spectrum adc3.02 1 adc3.02 {{0.000000 4095.000000 4096}} long
spectrum adc3.03 1 adc3.03 {{0.000000 4095.000000 4096}} long
spectrum adc3.04 1 adc3.04 {{0.000000 4095.000000 4096}} long
spectrum adc3.05 1 adc3.05 {{0.000000 4095.000000 4096}} long
spectrum adc3.06 1 adc3.06 {{0.000000 4095.000000 4096}} long
spectrum adc3.07 1 adc3.07 {{0.000000 4095.000000 4096}} long
spectrum adc3.08 1 adc3.08 {{0.000000 4095.000000 4096}} long
spectrum adc3.09 1 adc3.09 {{0.000000 4095.000000 4096}} long
spectrum adc3.10 1 adc3.10 {{0.000000 4095.000000 4096}} long
spectrum adc3.11 1 adc3.11 {{0.000000 4095.000000 4096}} long
spectrum adc3.12 1 adc3.12 {{0.000000 4095.000000 4096}} long
spectrum adc3.13 1 adc3.13 {{0.000000 4095.000000 4096}} long
spectrum adc3.14 1 adc3.14 {{0.000000 4095.000000 4096}} long
spectrum adc3.15 1 adc3.15 {{0.000000 4095.000000 4096}} long
spectrum adc3.16 1 adc3.16 {{0.000000 4095.000000 4096}} long
spectrum adc3.17 1 adc3.17 {{0.000000 4095.000000 4096}} long
spectrum adc3.18 1 adc3.18 {{0.000000 4095.000000 4096}} long
spectrum adc3.19 1 adc3.19 {{0.000000 4095.000000 4096}} long
spectrum adc3.20 1 adc3.20 {{0.000000 4095.000000 4096}} long
spectrum adc3.21 1 adc3.21 {{0.000000 4095.000000 4096}} long
spectrum adc3.22 1 adc3.22 {{0.000000 4095.000000 4096}} long
spectrum adc3.23 1 adc3.23 {{0.000000 4095.000000 4096}} long
spectrum adc3.24 1 adc3.24 {{0.000000 4095.000000 4096}} long
spectrum adc3.25 1 adc3.25 {{0.000000 4095.000000 4096}} long
spectrum adc3.26 1 adc3.26 {{0.000000 4095.000000 4096}} long
spectrum adc3.27 1 adc3.27 {{0.000000 4095.000000 4096}} long
spectrum adc3.28 1 adc3.28 {{0.000000 4095.000000 4096}} long
spectrum adc3.29 1 adc3.29 {{0.000000 4095.000000 4096}} long
spectrum adc3.30 1 adc3.30 {{0.000000 4095.000000 4096}} long
spectrum adc3.31 1 adc3.31 {{0.000000 4095.000000 4096}} long
spectrum adc3_sum s {adc3.00 adc3.01 adc3.02 adc3.03 adc3.04 adc3.05 adc3.06 adc3.07 adc3.08 adc3.09 adc3.10 adc3.11 adc3.12 adc3.13 adc3.14 adc3.15 adc3.16 adc3.17 adc3.10 adc3.18 adc3.19 adc3.20 adc3.21 adc3.22 adc3.23 adc3.24 adc3.25 adc3.26 adc3.27 adc3.28 adc3.29 adc3.30 adc3.31} {{0.000000 4095.000000 4096}} long
spectrum fp-anodes 2 {adc1.04 adc1.05} {{0.000000 4095.000000 512} {0.000000 4095.000000 512}} long
spectrum fp1_diffsum 2 {fp_plane1_tdiff fp_plane1_tsum} {{-4096.000000 4095.000000 256} {0.000000 8191.000000 256}} long
spectrum fp1_t1_vs_t2 2 {adc1.00 adc1.01} {{0.000000 4095.000000 512} {0.000000 4095.000000 512}} long
spectrum fp1_tdiff 1 fp_plane1_tdiff {{-4096.000000 4095.000000 8192}} long
spectrum fp1_tdiff_1 1 fp_plane1_tdiff {{-4096.000000 4095.000000 8192}} long
spectrum fp1_tsum 1 fp_plane1_tsum {{0.000000 8191.000000 4096}} long
spectrum fp2_diffsum 2 {fp_plane2_tdiff fp_plane2_tsum} {{-4096.000000 4095.000000 256} {0.000000 8191.000000 256}} long
spectrum fp2_t1_vs_t2 2 {adc1.02 adc1.03} {{0.000000 4095.000000 512} {0.000000 4095.000000 512}} long
spectrum fp2_tdiff 1 fp_plane2_tdiff {{-4096.000000 4095.000000 8192}} long
spectrum fp2_tdiff_1 1 fp_plane2_tdiff {{-4096.000000 4095.000000 8192}} long
spectrum fp2_tsum 1 fp_plane2_tsum {{0.000000 8191.000000 4096}} long
spectrum fp_plastic-anode1 2 {fp_plastic_esum adc1.04} {{0.000000 4095.000000 512} {0.000000 4095.000000 512}} long
spectrum fp_plastic-anode2 2 {fp_plastic_esum adc1.05} {{0.000000 4095.000000 512} {0.000000 4095.000000 512}} long
spectrum fp_plastics 2 {adc1.06 adc1.07} {{0.000000 4095.000000 512} {0.000000 4095.000000 512}} long
spectrum plane1-gated 1 adc1.00 {{0.000000 4095.000000 1024}} long
spectrum plane1-tdiff-proton-band 1 fp_plane1_tdiff {{-4096.000000 4095.000000 4096}} long
spectrum planet-diff-proton-band 1 fp_plane2_tdiff {{-4096.000000 4095.000000 4096}} long
spectrum pps-x-gate-ede1 1 adc1.00 {{0.000000 4095.000000 4096}} long
spectrum sps-BX-diff 2 {adc1.00 sps-X-diff} {{0.000000 4095.000000 1024} {0.000000 4095.000000 1024}} long
spectrum sps-X-ave-gateanode 1 sps-X-ave {{-4096.000000 4095.000000 8192}} long
spectrum sps-ave_diff-deut-band 2 {sps-X-ave sps-X-diff} {{-4096.000000 4095.000000 512} {-4096.000000 4095.000000 512}} long
spectrum sps-ave_diff-proton-band 2 {sps-X-ave sps-X-diff} {{-4096.000000 4095.000000 512} {-4096.000000 4095.000000 512}} long
spectrum sps-x-ave-alphaband 1 sps-X-ave {{-4096.000000 4095.000000 8192}} long
spectrum sps-x-ave-protonband 1 sps-X-ave {{-4096.000000 4095.000000 8192}} long
spectrum sps-x-gate-ede 1 adc1.00 {{0.000000 4095.000000 4096}} long
spectrum sps-x-gateedelow 1 adc1.00 {{0.000000 4095.000000 4096}} long
spectrum sps-x-protons 1 adc1.00 {{0.000000 4095.000000 4096}} long
spectrum sps-x-theta 2 {sps-X-ave sps-X-diff} {{-1024.000000 1023.000000 4096} {-1024.000000 0.000000 1024}} long
spectrum sps-x_ave 1 sps-X-ave {{-4096.000000 4095.000000 4096}} long
spectrum sps-x_diff 1 sps-X-diff {{-4096.000000 4095.000000 4096}} long
spectrum sps_x1_x2 2 {fp_plane1_tdiff fp_plane2_tdiff} {{-4096.000000 4095.000000 1024} {-4096.000000 4095.000000 1024}} long
spectrum sps_x_theta 2 {sps-X-ave sps-X-diff} {{-4096.000000 4095.000000 1024} {-4096.000000 4095.000000 1024}} long
spectrum tdc1.00 1 tdc1.00 {{0.000000 4095.000000 4096}} long
spectrum tdc1.01 1 tdc1.01 {{0.000000 4095.000000 4096}} long
spectrum tdc1.02 1 tdc1.02 {{0.000000 4095.000000 4096}} long
spectrum tdc1.03 1 tdc1.03 {{0.000000 4095.000000 4096}} long
spectrum tdc1.04 1 tdc1.04 {{0.000000 4095.000000 4096}} long
spectrum tdc1.05 1 tdc1.05 {{0.000000 4095.000000 4096}} long
spectrum tdc1.06 1 tdc1.06 {{0.000000 4095.000000 4096}} long
spectrum tdc1.07 1 tdc1.07 {{0.000000 4095.000000 4096}} long
spectrum tdc1.08 1 tdc1.08 {{0.000000 4095.000000 4096}} long
spectrum tdc1.09 1 tdc1.09 {{0.000000 4095.000000 4096}} long
spectrum tdc1.10 1 tdc1.10 {{0.000000 4095.000000 4096}} long
spectrum tdc1.11 1 tdc1.11 {{0.000000 4095.000000 4096}} long
spectrum tdc1.12 1 tdc1.12 {{0.000000 4095.000000 4096}} long
spectrum tdc1.13 1 tdc1.13 {{0.000000 4095.000000 4096}} long
spectrum tdc1.14 1 tdc1.14 {{0.000000 4095.000000 4096}} long
spectrum tdc1.15 1 tdc1.15 {{0.000000 4095.000000 4096}} long
spectrum tdc1.16 1 tdc1.16 {{0.000000 4095.000000 4096}} long
spectrum tdc1.17 1 tdc1.17 {{0.000000 4095.000000 4096}} long
spectrum tdc1.18 1 tdc1.18 {{0.000000 4095.000000 4096}} long
spectrum tdc1.19 1 tdc1.19 {{0.000000 4095.000000 4096}} long
spectrum tdc1.20 1 tdc1.20 {{0.000000 4095.000000 4096}} long
spectrum tdc1.21 1 tdc1.21 {{0.000000 4095.000000 4096}} long
spectrum tdc1.22 1 tdc1.22 {{0.000000 4095.000000 4096}} long
spectrum tdc1.23 1 tdc1.23 {{0.000000 4095.000000 4096}} long
spectrum tdc1.24 1 tdc1.24 {{0.000000 4095.000000 4096}} long
spectrum tdc1.25 1 tdc1.25 {{0.000000 4095.000000 4096}} long
spectrum tdc1.26 1 tdc1.26 {{0.000000 4095.000000 4096}} long
spectrum tdc1.27 1 tdc1.27 {{0.000000 4095.000000 4096}} long
spectrum tdc1.28 1 tdc1.28 {{0.000000 4095.000000 4096}} long
spectrum tdc1.29 1 tdc1.29 {{0.000000 4095.000000 4096}} long
spectrum tdc1.30 1 tdc1.30 {{0.000000 4095.000000 4096}} long
spectrum tdc1.31 1 tdc1.31 {{0.000000 4095.000000 4096}} long

# Gate definitions in reverse dependency order
 
gate alpha-band F {}
gate alpha_band c {fp_plastic_esum adc1.04 {{176.301376 1634.794556} {585.000000 1073.835571} {905.547974 1097.876709} {1089.863037 1386.369873} {673.150696 2508.287598} {424.726013 2884.931396} {104.178085 2852.876709}}}
gate alpha_gate F {}
gate alphaband F {}
gate anode1-protons s {adc1.05 {279.000000 702.000000}}
gate contour_004 c {adc1.00 adc1.01 {{1017.739746 1714.931519} {961.643860 1434.452026} {1306.232910 1009.726013} {1602.739746 761.301392} {1722.945190 1089.863037}}}
gate deut-band c {adc1.06 adc1.04 {{272.465759 296.506836} {689.178101 392.671234} {721.232849 1041.780762} {520.890381 1522.602783} {224.383560 1306.232910} {200.342468 697.191772} {208.356171 312.534241}}}
gate fp1_diffsum_gate c {fp_plane1_tdiff fp_plane1_tsum {{-754.764648 2344.874512} {658.411621 2344.874512} {594.176270 2826.697998} {-819.000000 2826.697998}}}
gate fp2_diffsum_gate c {fp_plane2_tdiff fp_plane2_tsum {{-690.529297 2601.847168} {-594.176514 1895.172607} {1108.058594 1927.294189} {1011.706055 2537.604004}}}
gate fp12 * {fp1_diffsum_gate fp2_diffsum_gate}
gate fp_alphas * {fp12 alpha_band}
gate proton-band c {adc1.06 adc1.04 {{88.150688 3830.547852} {88.150688 2147.671143} {384.657532 2107.602783} {336.575348 3966.780762}}}
gate fp_proton * {fp12 proton-band}
gate proton_band c {fp_plastic_esum adc1.04 {{208.356171 929.589050} {408.698639 472.808228} {1113.904053 400.684937} {1089.863037 1025.753418}}}

# Gate Applications: 

apply fp_proton  fp1_tdiff_1
apply fp_proton  fp2_tdiff_1
apply proton-band  plane1-tdiff-proton-band
apply proton-band  planet-diff-proton-band
apply anode1-protons  sps-X-ave-gateanode
apply deut-band  sps-ave_diff-deut-band
apply proton-band  sps-ave_diff-proton-band
apply fp_alphas  sps-x-ave-alphaband
apply fp_proton  sps-x-ave-protonband
apply alpha_band  sps-x-theta

#  filter definitions: ALL FILTERS ARE DISABLED!!!!!!!


#  - Parameter tab layout: 

set parameter(select) 1
set parameter(Array)  false

#-- Variable tab layout

set variable(select) 1
set variable(Array)  0
