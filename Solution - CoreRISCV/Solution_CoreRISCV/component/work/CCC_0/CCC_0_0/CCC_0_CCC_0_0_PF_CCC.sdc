set_component CCC_0_CCC_0_0_PF_CCC
# Microsemi Corp.
# Date: 2019-Sep-11 14:32:12
#

# Base clock for PLL #0
create_clock -period 20 [ get_pins { pll_inst_0/REF_CLK_0 } ]
create_generated_clock -multiply_by 20 -divide_by 9 -source [ get_pins { pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { pll_inst_0/OUT0 } ]
