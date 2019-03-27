#  SpecTclGUI save file created Fri Jun 15 18:24:02 EDT 2018
#  SpecTclGui Version: 1.0
#      Author: Ron Fox (fox@nscl.msu.edu)

#New Tree Parameters:


#Modified Tree Parameters:


# Pseudo parameter definitions


# Tree variable definitions:


# Spectrum Definitions

spectrum EL_ER_FP 2 {adc1.02 adc1.03} {{0.000000 4095.000000 256} {0.000000 4095.000000 256}} long
spectrum E_dE_FP 2 {adc1.02 adc1.01} {{0.000000 4095.000000 1024} {0.000000 4095.000000 1024}} long
spectrum FP_X_HE 1 adc1.00 {{0.000000 4095.000000 4096}} long
spectrum FP_X_LE 1 adc1.00 {{0.000000 4095.000000 4096}} long
spectrum FP_X_ODD 1 adc1.00 {{0.000000 4095.000000 4096}} long
spectrum adc1.00 1 adc1.00 {{0.000000 4095.000000 4096}} long
spectrum adc1.01 1 adc1.01 {{0.000000 4095.000000 4096}} long
spectrum adc1.02 1 adc1.02 {{0.000000 4095.000000 4096}} long
spectrum adc1.03 1 adc1.03 {{0.000000 4095.000000 4096}} long
spectrum tdc1.00 1 tdc1.00 {{0.000000 4095.000000 4096}} long
spectrum tdc1.01 1 tdc1.01 {{0.000000 4095.000000 4096}} long

# Gate definitions in reverse dependency order
 
gate HE_PLAST c {adc1.02 adc1.03 {{449.647064 160.588242} {562.058838 224.823532} {417.529419 722.647034} {305.117645 1300.764648} {128.470581 1124.117676} {240.882355 273.000000} {321.176483 64.235291}}}
gate LE_PLAST c {adc1.02 adc1.03 {{96.352943 337.235291} {192.705887 240.882355} {144.529419 48.176472} {112.411766 64.235291} {48.176472 128.470581}}}
gate ODD_PLAST c {adc1.02 adc1.03 {{289.058838 610.235291} {417.529419 754.764709} {273.000000 963.529419} {208.764709 770.823547}}}

# Gate Applications: 

apply HE_PLAST  FP_X_HE
apply LE_PLAST  FP_X_LE
apply ODD_PLAST  FP_X_ODD

#  filter definitions: ALL FILTERS ARE DISABLED!!!!!!!


#  - Parameter tab layout: 

set parameter(select) 1
set parameter(Array)  false

#-- Variable tab layout

set variable(select) 1
set variable(Array)  0
