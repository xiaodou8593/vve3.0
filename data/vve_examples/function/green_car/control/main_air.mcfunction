#vve_examples:green_car/control/main_air
# vve_examples:green_car/main_c调用

scoreboard players set inp int 0
execute if score input_w int matches 0 if score input_s int matches 0 run function vve:vehicle/engine/_set_power

scoreboard players set inp int 800
execute if score input_a int matches 1 if score input_d int matches 0 as 0-0-0-0-0 if score grab_layer_response int matches 2.. run function vve:vehicle/_set_roll
scoreboard players set inp int -800
execute if score input_a int matches 0 if score input_d int matches 1 as 0-0-0-0-0 if score grab_layer_response int matches 2.. run function vve:vehicle/_set_roll
scoreboard players set inp int 0
execute if score input_a int matches 0 if score input_d int matches 0 as 0-0-0-0-0 if score grab_layer_response int matches 2.. run function vve:vehicle/_set_roll