set_component AXI4_Interconnect
set_false_path -through [get_nets {ARESETN*}] -to [ get_cells { */arst_aclk_sync/sysReset*}]
set_false_path -through [get_nets {ARESETN*}] -to [ get_cells { */SlvConvertor_loop[*].slvcnv/genblk1.rsync/sysReset* } ]
set_false_path -from [ get_cells { */SlvConvertor_loop[*].slvcnv/slvCDC/genblk1*/rdGrayCounter/cntGray* } ] -to [ get_cells { */SlvConvertor_loop[*].slvcnv/slvCDC/genblk1*/rdPtr_s1* } ]
set_false_path -from [ get_cells { */SlvConvertor_loop[*].slvcnv/slvCDC/genblk1*/wrGrayCounter/cntGray* } ] -to [ get_cells { */SlvConvertor_loop[*].slvcnv/slvCDC/genblk1*/wrPtr_s1* } ]
