read_lef "platform/ASAP7/lef/asap7_tech_1x_201209.lef"
read_lef "platform/ASAP7/lef/asap7sc7p5t_27_R_1x_201211.lef"
read_lef "platform/ASAP7/lef/sram_asap7_16x256_1rw.lef"
read_lef "platform/ASAP7/lef/sram_asap7_32x256_1rw.lef"
read_lef "platform/ASAP7/lef/sram_asap7_64x64_1rw.lef"
read_lef "platform/ASAP7/lef/sram_asap7_64x256_1rw.lef"


read_liberty "platform/ASAP7/lib/asap7sc7p5t_AO_RVT_FF_nldm_201020.lib"
read_liberty "platform/ASAP7/lib/asap7sc7p5t_INVBUF_RVT_FF_nldm_201020.lib"
read_liberty "platform/ASAP7/lib/asap7sc7p5t_OA_RVT_FF_nldm_201020.lib"
read_liberty "platform/ASAP7/lib/asap7sc7p5t_SEQ_RVT_FF_nldm_201020.lib"
read_liberty "platform/ASAP7/lib/asap7sc7p5t_SIMPLE_RVT_FF_nldm_201020.lib"
read_liberty "platform/ASAP7/lib/sram_asap7_16x256_1rw.lib"
read_liberty "platform/ASAP7/lib/sram_asap7_32x256_1rw.lib"
read_liberty "platform/ASAP7/lib/sram_asap7_64x64_1rw.lib"
read_liberty "platform/ASAP7/lib/sram_asap7_64x256_1rw.lib"


read_def "design/NV_NVDLA_partition_m/NV_NVDLA_partition_m.def"
read_sdc "design/NV_NVDLA_partition_m/NV_NVDLA_partition_m.sdc"
read_spef "design/NV_NVDLA_partition_m/NV_NVDLA_partition_m.spef"
# read_verilog "design/NV_NVDLA_partition_m/NV_NVDLA_partition_m.v"
# link_design NV_NVDLA_partition_m



set_propagated_clock [all_clocks]

report_checks -path_delay min -fields {slew cap input nets fanout} -format full_clock_expanded

report_checks -path_delay max -fields {slew cap input nets fanout} -format full_clock_expanded

report_tns

report_wns

report_power

report_design_area
