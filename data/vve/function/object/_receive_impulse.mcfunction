#vve:object/_receive_impulse
# 接收冲量响应
# 迭代receiver{...}

scoreboard players add impulse_receiver_response int 1
execute if score impulse_receiver_response int matches 1 run return run function vve:object/first_impulse

scoreboard players operation impulse_receiver_sx int += impulse_x int
scoreboard players operation impulse_receiver_sy int += impulse_y int
scoreboard players operation impulse_receiver_sz int += impulse_z int
scoreboard players operation impulse_receiver_sx int -= impulse_receiver_x int
scoreboard players operation impulse_receiver_sy int -= impulse_receiver_y int
scoreboard players operation impulse_receiver_sz int -= impulse_receiver_z int

scoreboard players operation impulse_receiver_fx int += impulse_fx int
scoreboard players operation impulse_receiver_fy int += impulse_fy int
scoreboard players operation impulse_receiver_fz int += impulse_fz int