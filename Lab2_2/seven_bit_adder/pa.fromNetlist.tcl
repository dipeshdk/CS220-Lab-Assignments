
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name seven_bit_adder -dir "/media/debarsho/hacker/CS220Labs/Lab2_2/seven_bit_adder/planAhead_run_3" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/media/debarsho/hacker/CS220Labs/Lab2_2/seven_bit_adder/Sevenfulladder.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/media/debarsho/hacker/CS220Labs/Lab2_2/seven_bit_adder} }
set_property target_constrs_file "Sevenfulladder.ucf" [current_fileset -constrset]
add_files [list {Sevenfulladder.ucf}] -fileset [get_property constrset [current_run]]
link_design
