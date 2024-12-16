# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 20.00 -waveform {0 10} [get_ports clk]

# Reset signal
set_property PACKAGE_PIN R2 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

## VGA Outputs
set_property PACKAGE_PIN N19 [get_ports {vga_out_r[4]}] # VGA R4
set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_r[4]}]
set_property PACKAGE_PIN J19 [get_ports {vga_out_r[3]}] # VGA R3
set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_r[3]}]
set_property PACKAGE_PIN H19 [get_ports {vga_out_r[2]}] # VGA R2
set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_r[2]}]
set_property PACKAGE_PIN G19 [get_ports {vga_out_r[1]}] # VGA R1
set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_r[1]}]
set_property PACKAGE_PIN D17 [get_ports {vga_out_r[0]}] # VGA R0
set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_r[0]}]

set_property PACKAGE_PIN G17 [get_ports {vga_out_g[5]}] # VGA G5
set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_g[5]}]
set_property PACKAGE_PIN H17 [get_ports {vga_out_g[4]}] # VGA G4
set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_g[4]}]
set_property PACKAGE_PIN J17 [get_ports {vga_out_g[3]}] # VGA G3
set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_g[3]}]
set_property PACKAGE_PIN J18 [get_ports {vga_out_g[2]}] # VGA G2
set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_g[2]}]
set_property PACKAGE_PIN K18 [get_ports {vga_out_g[1]}] # VGA G1
set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_g[1]}]
set_property PACKAGE_PIN L18 [get_ports {vga_out_g[0]}] # VGA G0
set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_g[0]}]

set_property PACKAGE_PIN L7 [get_ports {vga_out_b[4]}] # VGA B4
set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_b[4]}]
set_property PACKAGE_PIN N8 [get_ports {vga_out_b[3]}] # VGA B3
set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_b[3]}]
set_property PACKAGE_PIN P8 [get_ports {vga_out_b[2]}] # VGA B2
set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_b[2]}]
set_property PACKAGE_PIN M7 [get_ports {vga_out_b[1]}] # VGA B1
set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_b[1]}]
set_property PACKAGE_PIN P7 [get_ports {vga_out_b[0]}] # VGA B0
set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_b[0]}]

set_property PACKAGE_PIN P19 [get_ports vga_out_hs] # VGA HS
set_property IOSTANDARD LVCMOS33 [get_ports vga_out_hs]
set_property PACKAGE_PIN R19 [get_ports vga_out_vs] # VGA VS
set_property IOSTANDARD LVCMOS33 [get_ports vga_out_vs]

## UART RX
set_property PACKAGE_PIN C11 [get_ports rx]
set_property IOSTANDARD LVCMOS33 [get_ports rx]
