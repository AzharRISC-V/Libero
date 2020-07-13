open_project -project {C:\Users\Public\Documents\Libero\Solution - Copy\Libero_Project\designer\top\top_fp\top.pro}
enable_device -name {MPF300TS} -enable 1
set_programming_file -name {MPF300TS} -no_file
run_selected_actions -disable_prog_design {TRUE} -prog_spi_flash {TRUE} -spi_flash_image {C:\Users\Public\Documents\Libero\Solution - Copy\Libero_Project\designer\top\top_spi_flash.bin} -spi_flash_action {PROGRAM_SPI_IMAGE}
save_project
close_project
