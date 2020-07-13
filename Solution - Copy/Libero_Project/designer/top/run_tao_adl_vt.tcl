set_family {PolarFire}
read_adl {C:\Users\Public\Documents\Libero\Solution - Copy\Libero_Project\designer\top\top.adl}
read_afl {C:\Users\Public\Documents\Libero\Solution - Copy\Libero_Project\designer\top\top.afl}
map_netlist
read_sdc {C:\Users\Public\Documents\Libero\Solution - Copy\Libero_Project\constraint\top_derived_constraints.sdc}
read_sdc {C:\Users\Public\Documents\Libero\Solution - Copy\Libero_Project\constraint\timing_user_constraints.sdc}
check_constraints {C:\Users\Public\Documents\Libero\Solution - Copy\Libero_Project\constraint\timing_sdc_errors.log}
write_sdc -strict -afl {C:\Users\Public\Documents\Libero\Solution - Copy\Libero_Project\designer\top\timing_analysis.sdc}
