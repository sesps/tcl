#  SpecTclGUI save file created Mon Jun 25 13:32:45 EDT 2018
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
catch {spectrum -delete tdc1.00}
spectrum tdc1.00 1 tdc1.00 {{0.000000 4095.000000 4096}} long
catch {spectrum -delete tdc1.01}
spectrum tdc1.01 1 tdc1.01 {{0.000000 4095.000000 4096}} long

# Gate definitions in reverse dependency order
 

# Gate Applications: 


#  filter definitions: ALL FILTERS ARE DISABLED!!!!!!!

