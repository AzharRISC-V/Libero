set_component PF_IOD_LVDS_RX
create_clock  -period 1000.0 [ get_pins CLK_0/PAD ]
set_false_path -to [ get_pins {PF_LANECTRL_0/I_LANECTRL*/HS_IO_CLK_PAUSE} ]
