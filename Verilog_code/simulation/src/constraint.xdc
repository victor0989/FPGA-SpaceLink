## Constraints BCD counter_leds

## Configuración del reloj de sistema
################################################################################
set_property PACKAGE_PIN R8 [get_ports { clk }]
set_property IOSTANDARD LVCMOS18 [get_ports { clk }]
create_clock -name sysclk -period 10 -waveform {0 5} [get_ports { clk }]

################################################################################
## System Reset
################################################################################
set_property PACKAGE_PIN AB9 [get_ports { reset }]
set_property IOSTANDARD LVCMOS18 [get_ports { reset }]

################################################################################
## Botón para iniciar el contador BCD (btn)
################################################################################
set_property PACKAGE_PIN G13 [get_ports { btn }]
set_property IOSTANDARD LVCMOS18 [get_ports { btn }]

## Conexiones de USB transceiver
set_property -dict { PACKAGE_PIN U117.4 IOSTANDARD LVDS } [get_ports { RESET_B }];
set_property -dict { PACKAGE_PIN H31 IOSTANDARD LVCMOS33 } [get_ports { STP }];
set_property -dict { PACKAGE_PIN G30 IOSTANDARD LVCMOS33 } [get_ports { DIR }];
set_property -dict { PACKAGE_PIN G29 IOSTANDARD LVCMOS33 } [get_ports { CLKOUT }];
set_property -dict { PACKAGE_PIN G33 IOSTANDARD LVCMOS33 } [get_ports { NXT }];
set_property -dict { PACKAGE_PIN G34 IOSTANDARD LVCMOS33 } [get_ports { DATA0 }];
set_property -dict { PACKAGE_PIN H29 IOSTANDARD LVCMOS33 } [get_ports { DATA1 }];
set_property -dict { PACKAGE_PIN G31 IOSTANDARD LVCMOS33 } [get_ports { DATA2 }];
set_property -dict { PACKAGE_PIN H32 IOSTANDARD LVCMOS33 } [get_ports { DATA3 }];

## Conexiones HDMI
set_property -dict { PACKAGE_PIN AN6 IOSTANDARD LVDS } [get_ports { tmds_data_p[0] }];
set_property -dict { PACKAGE_PIN AN5 IOSTANDARD LVDS } [get_ports { tmds_data_n[0] }];
set_property -dict { PACKAGE_PIN AM4 IOSTANDARD LVDS } [get_ports { tmds_data_p[1] }];
set_property -dict { PACKAGE_PIN AM3 IOSTANDARD LVDS } [get_ports { tmds_data_n[1] }];
set_property -dict { PACKAGE_PIN AL6 IOSTANDARD LVDS } [get_ports { tmds_data_p[2] }];
set_property -dict { PACKAGE_PIN AL5 IOSTANDARD LVDS } [get_ports { tmds_data_n[2] }];
set_property -dict { PACKAGE_PIN G21 IOSTANDARD LVCMOS33 } [get_ports { tmds_clk_p }];
set_property -dict { PACKAGE_PIN F21 IOSTANDARD LVCMOS33 } [get_ports { tmds_clk_n }];
set_property -dict { PACKAGE_PIN N8 IOSTANDARD LVCMOS33 } [get_ports { HDMI_TX_SRC_SCL }];
set_property -dict { PACKAGE_PIN N9 IOSTANDARD LVCMOS33 } [get_ports { HDMI_TX_SRC_SDA }];
set_property -dict { PACKAGE_PIN N11 IOSTANDARD LVCMOS33 } [get_ports { HDMI_TX_EN }];
set_property -dict { PACKAGE_PIN M12 IOSTANDARD LVCMOS33 } [get_ports { HDMI_TX_CEC }];
set_property -dict { PACKAGE_PIN N13 IOSTANDARD LVCMOS33 } [get_ports { HDMI_TX_HPD }];

## Conexiones HDMI Adicionales
set_property -dict { PACKAGE_PIN G8 IOSTANDARD LVCMOS33 } [get_ports { HDMI_SI5324_LOL }];
set_property -dict { PACKAGE_PIN H8 IOSTANDARD LVCMOS33 } [get_ports { HDMI_SI5324_RST }];
set_property -dict { PACKAGE_PIN G14 IOSTANDARD LVDS } [get_ports { HDMI_REC_CLOCK_C_P }];
set_property -dict { PACKAGE_PIN F13 IOSTANDARD LVDS } [get_ports { HDMI_REC_CLOCK_C_N }];
set_property -dict { PACKAGE_PIN AD8 IOSTANDARD LVDS } [get_ports { HDMI_SI5324_OUT_C_P }];
set_property -dict { PACKAGE_PIN AD7 IOSTANDARD LVDS } [get_ports { HDMI_SI5324_OUT_C_N }];

## Conexiones HDMI Input (Rx)
set_property -dict { PACKAGE_PIN AP4 IOSTANDARD LVDS } [get_ports { HDMI_RX0_C_P }];
set_property -dict { PACKAGE_PIN AP3 IOSTANDARD LVDS } [get_ports { HDMI_RX0_C_N }];
set_property -dict { PACKAGE_PIN AN2 IOSTANDARD LVDS } [get_ports { HDMI_RX1_C_P }];
set_property -dict { PACKAGE_PIN AN1 IOSTANDARD LVDS } [get_ports { HDMI_RX1_C_N }];
set_property -dict { PACKAGE_PIN AL2 IOSTANDARD LVDS } [get_ports { HDMI_RX2_C_P }];
set_property -dict { PACKAGE_PIN AL1 IOSTANDARD LVDS } [get_ports { HDMI_RX2_C_N }];
set_property -dict { PACKAGE_PIN AC10 IOSTANDARD LVDS } [get_ports { HDMI_RX_CLK_C_P }];
set_property -dict { PACKAGE_PIN AC9 IOSTANDARD LVDS } [get_ports { HDMI_RX_CLK_C_N }];
set_property -dict { PACKAGE_PIN M8 IOSTANDARD LVCMOS33 } [get_ports { HDMI_RX_PWR_DET }];
set_property -dict { PACKAGE_PIN M10 IOSTANDARD LVCMOS33 } [get_ports { HDMI_RX_HPD }];
set_property -dict { PACKAGE_PIN N12 IOSTANDARD LVCMOS33 } [get_ports { HDMI_CTL_SCL }];
set_property -dict { PACKAGE_PIN P12 IOSTANDARD LVCMOS33 } [get_ports { HDMI_CTL_SDA }];
set_property -dict { PACKAGE_PIN M9 IOSTANDARD LVCMOS33 } [get_ports { HDMI_RX_SNK_SCL }];
set_property -dict { PACKAGE_PIN M11 IOSTANDARD LVCMOS33 } [get_ports { HDMI_RX_SNK_SDA }];


################################################################################
## 7-Segment Display Anodes (an[3:0])
################################################################################
set_property PACKAGE_PIN J19 [get_ports { an[0] }]
set_property IOSTANDARD LVCMOS18 [get_ports { an[0] }]

set_property PACKAGE_PIN J18 [get_ports { an[1] }]
set_property IOSTANDARD LVCMOS18 [get_ports { an[1] }]

set_property PACKAGE_PIN H17 [get_ports { an[2] }]
set_property IOSTANDARD LVCMOS18 [get_ports { an[2] }]

set_property PACKAGE_PIN H18 [get_ports { an[3] }]
set_property IOSTANDARD LVCMOS18 [get_ports { an[3] }]

################################################################################
## 7-Segment Display Segments (sseg[7:0])
################################################################################
set_property PACKAGE_PIN M21 [get_ports { sseg[0] }]
set_property IOSTANDARD LVCMOS18 [get_ports { sseg[0] }]

set_property PACKAGE_PIN L21 [get_ports { sseg[1] }]
set_property IOSTANDARD LVCMOS18 [get_ports { sseg[1] }]

set_property PACKAGE_PIN L23 [get_ports { sseg[2] }]
set_property IOSTANDARD LVCMOS18 [get_ports { sseg[2] }]

set_property PACKAGE_PIN K18 [get_ports { sseg[3] }]
set_property IOSTANDARD LVCMOS18 [get_ports { sseg[3] }]

set_property PACKAGE_PIN K19 [get_ports { sseg[4] }]
set_property IOSTANDARD LVCMOS18 [get_ports { sseg[4] }]

set_property PACKAGE_PIN K22 [get_ports { sseg[5] }]
set_property IOSTANDARD LVCMOS18 [get_ports { sseg[5] }]

set_property PACKAGE_PIN K23 [get_ports { sseg[6] }]
set_property IOSTANDARD LVCMOS18 [get_ports { sseg[6] }]

set_property PACKAGE_PIN M18 [get_ports { sseg[7] }]
set_property IOSTANDARD LVCMOS18 [get_ports { sseg[7] }]

################################################################################
## Ethernet State LEDs (eth_state[2:0])
################################################################################
set_property PACKAGE_PIN AG14 [get_ports { eth_state[0] }]
set_property IOSTANDARD LVCMOS18 [get_ports { eth_state[0] }]

set_property PACKAGE_PIN AF14 [get_ports { eth_state[1] }]
set_property IOSTANDARD LVCMOS18 [get_ports { eth_state[1] }]

set_property PACKAGE_PIN AJ14 [get_ports { eth_state[2] }]
set_property IOSTANDARD LVCMOS18 [get_ports { eth_state[2] }]

################################################################################
## Additional Status LEDs (led_status[2:0])
################################################################################
set_property PACKAGE_PIN AK14 [get_ports { led_status[0] }]
set_property IOSTANDARD LVCMOS18 [get_ports { led_status[0] }]

set_property PACKAGE_PIN AK13 [get_ports { led_status[1] }]
set_property IOSTANDARD LVCMOS18 [get_ports { led_status[1] }]

set_property PACKAGE_PIN AJ13 [get_ports { led_status[2] }]
set_property IOSTANDARD LVCMOS18 [get_ports { led_status[2] }]

################################################################################
## Data Bus signal (db)
################################################################################
set_property PACKAGE_PIN L18 [get_ports { db }]
set_property IOSTANDARD LVCMOS18 [get_ports { db }]

################################################################################
## User Switches (sw[3:0])
################################################################################
set_property PACKAGE_PIN F22 [get_ports { sw[0] }]
set_property IOSTANDARD LVCMOS18 [get_ports { sw[0] }]

set_property PACKAGE_PIN G22 [get_ports { sw[1] }]
set_property IOSTANDARD LVCMOS18 [get_ports { sw[1] }]

set_property PACKAGE_PIN J22 [get_ports { sw[2] }]
set_property IOSTANDARD LVCMOS18 [get_ports { sw[2] }]

set_property PACKAGE_PIN H22 [get_ports { sw[3] }]
set_property IOSTANDARD LVCMOS18 [get_ports { sw[3] }]

################################################################################
## Conexiones SFP0 y SFP1
################################################################################
set_property -dict { PACKAGE_PIN Y4 IOSTANDARD LVDS } [get_ports { SFP0_TX_P }];
set_property -dict { PACKAGE_PIN Y3 IOSTANDARD LVDS } [get_ports { SFP0_TX_N }];
set_property -dict { PACKAGE_PIN AA2 IOSTANDARD LVDS } [get_ports { SFP0_RX_P }];
set_property -dict { PACKAGE_PIN AA1 IOSTANDARD LVDS } [get_ports { SFP0_RX_N }];
set_property -dict { PACKAGE_PIN AE22 IOSTANDARD LVCMOS12 } [get_ports { SFP0_TX_DISABLE_B }];

set_property -dict { PACKAGE_PIN W6 IOSTANDARD LVDS } [get_ports { SFP1_TX_P }];
set_property -dict { PACKAGE_PIN W5 IOSTANDARD LVDS } [get_ports { SFP1_TX_N }];
set_property -dict { PACKAGE_PIN W2 IOSTANDARD LVDS } [get_ports { SFP1_RX_P }];
set_property -dict { PACKAGE_PIN W1 IOSTANDARD LVDS } [get_ports { SFP1_RX_N }];
set_property -dict { PACKAGE_PIN AF20 IOSTANDARD LVCMOS12 } [get_ports { SFP1_TX_DISABLE_B }];

## Pines de los LEDs Ethernet
set_property -dict { PACKAGE_PIN AL11 IOSTANDARD LVCMOS12 } [get_ports { LED_0 }];
set_property -dict { PACKAGE_PIN AL13 IOSTANDARD LVCMOS12 } [get_ports { LED_1 }];
set_property -dict { PACKAGE_PIN AK13 IOSTANDARD LVCMOS12 } [get_ports { LED_2 }];

## Pines para Switches
set_property -dict { PACKAGE_PIN J38 IOSTANDARD LVCMOS33 } [get_ports { arm_trace_power }];
set_property -dict { PACKAGE_PIN J153 IOSTANDARD LVCMOS33 } [get_ports { power_inhibit }];

## Pines para el DIP Switch PS_MODE select (SW6)
set_property -dict { PACKAGE_PIN P7 IOSTANDARD LVCMOS33 } [get_ports { ps_mode[0] }];
set_property -dict { PACKAGE_PIN R7 IOSTANDARD LVCMOS33 } [get_ports { ps_mode[1] }];
set_property -dict { PACKAGE_PIN R8 IOSTANDARD LVCMOS33 } [get_ports { ps_mode[2] }];
set_property -dict { PACKAGE_PIN T8 IOSTANDARD LVCMOS33 } [get_ports { ps_mode[3] }];

## Pines para el DIP Switch MSP430 GPIO (SW8)
set_property -dict { PACKAGE_PIN U8 IOSTANDARD LVCMOS33 } [get_ports { gpio[0] }];
