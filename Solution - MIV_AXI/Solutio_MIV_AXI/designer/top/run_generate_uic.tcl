set_device \
    -fam PolarFire \
    -die PA5M300TS \
    -pkg fcg1152
set_proj_dir \
    -path {C:\Users\Public\Documents\Libero\Solution - Copy\Libero_Project}
set_impl_dir \
    -path {C:\Users\Public\Documents\Libero\Solution - Copy\Libero_Project\designer\top}
set_first_stage \
    -address 00000000
set_second_stage \
    -uprom_address 00000000 \
    -snvm_address 00000000 \
    -spi_address 00000400 \
    -spi_binding spi_noauth \
   -ramBrodcast 1
set_override_file \
    -path {}
set_auto_calib_timeout \
    -value {3000}
