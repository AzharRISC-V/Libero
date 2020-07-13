set_component PF_IOD_LVDS_RX_PF_CLK_DIV_RXCLK_PF_CLK_DIV_DELAY
create_generated_clock -source [ get_pins I_CDD/A ] -edges {1 7 11} [ get_pins I_CDD/Y_DIV ]
