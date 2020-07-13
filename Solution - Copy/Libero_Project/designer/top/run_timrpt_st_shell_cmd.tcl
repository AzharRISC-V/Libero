read_sdc -scenario "timing_analysis" -netlist "optimized" -pin_separator "/" -ignore_errors {C:/Users/Public/Documents/Libero/Solution - Copy/Libero_Project/designer/top/timing_analysis.sdc}
set_options -analysis_scenario "timing_analysis" 
save
source {top_run_timrpt_st_shell_txt.tcl}
