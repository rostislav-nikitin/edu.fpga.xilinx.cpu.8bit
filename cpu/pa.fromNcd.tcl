
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name led_control -dir "/home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/planAhead_run_2" -part xa6slx9ftg256-3
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu_freq_divider.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu} }
set_property target_constrs_file "cpu_freq_divider.ucf" [current_fileset -constrset]
add_files [list {cpu_freq_divider.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "/home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu_freq_divider.ncd"
if {[catch {read_twx -name results_1 -file "/home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu_freq_divider.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu_freq_divider.twx\": $eInfo"
}
