#vve_examples:green_car/control/main_surface
# vve_examples:green_car/main_c调用

# 空格键等价于S键
scoreboard players operation input_s int > input_space int

scoreboard players operation inp int = backward_power int
execute if score input_space int matches 1 run scoreboard players set inp int 0
execute if score input_s int matches 1 run function vve:vehicle/engine/_set_power
scoreboard players operation inp int = forward_power int
execute if score input_w int matches 1 run function vve:vehicle/engine/_set_power
scoreboard players set inp int 0
execute if score input_w int matches 0 if score input_s int matches 0 run function vve:vehicle/engine/_set_power

scoreboard players operation r int = rotation_r int
scoreboard players set sign int 1
execute if score shift_cnt_front int matches 1.. if score input_a int matches 1 if score input_d int matches 0 as 0-0-0-0-0 run function vve:vehicle/_set_rotation
scoreboard players operation sign int *= -1 int
execute if score shift_cnt_front int matches 1.. if score input_d int matches 1 if score input_a int matches 0 as 0-0-0-0-0 run function vve:vehicle/_set_rotation
scoreboard players set sign int 0
execute if score shift_cnt int matches 3.. if score input_a int matches 0 if score input_d int matches 0 as 0-0-0-0-0 run function vve:vehicle/_set_rotation

# 同步轮胎状态
scoreboard players set temp_state int 0
execute if score input_a int matches 1 run scoreboard players set temp_state int 8
execute if score input_d int matches 1 run scoreboard players set temp_state int 24
execute if score input_s int matches 1 run scoreboard players add temp_state int 8
execute if score input_w int matches 1 run scoreboard players add wheel_state int 1
execute if score input_s int matches 1 run scoreboard players remove wheel_state int 1
scoreboard players operation wheel_state int %= 8 int
scoreboard players operation wheel_state int += temp_state int
execute unless score wheel_state int = @s wheel_state on passengers store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players get wheel_state int