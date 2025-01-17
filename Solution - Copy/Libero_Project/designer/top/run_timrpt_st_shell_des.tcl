set_device \
    -family  PolarFire \
    -die     PA5M300TS \
    -package fcg1152 \
    -speed   -1 \
    -tempr   {IND} \
    -voltr   {IND}
set_def {VOLTAGE} {1.0}
set_def {VCCI_1.2_VOLTR} {IND}
set_def {VCCI_1.5_VOLTR} {IND}
set_def {VCCI_1.8_VOLTR} {IND}
set_def {VCCI_2.5_VOLTR} {IND}
set_def {VCCI_3.3_VOLTR} {IND}
set_def USE_CONSTRAINTS_FLOW 1
set_name top
set_workdir {C:\Users\Public\Documents\Libero\Solution - Copy\Libero_Project\designer\top}
set_design_state post_layout
set_operating_conditions -name slow_lv_lt
set_operating_conditions -name fast_hv_lt
set_operating_conditions -name slow_lv_ht
