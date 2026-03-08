#vve:object/_clear_receiver
# 清空接收器receiver{...}

data modify storage vve:io list_grab_points set value []

scoreboard players set bounce_layer_receiver_response int 0

scoreboard players set grab_layer_receiver_response int 0
scoreboard players set grab_layer_receiver_v_max int 0
scoreboard players set grab_layer_receiver_v_norm int 0
scoreboard players set grab_layer_receiver_nvec_x int 0
scoreboard players set grab_layer_receiver_nvec_y int 10000
scoreboard players set grab_layer_receiver_nvec_z int 0

scoreboard players set friction_receiver_response int 10000

scoreboard players set shift_receiver_response int 0
scoreboard players set shift_receiver_x int 0
scoreboard players set shift_receiver_y int 0
scoreboard players set shift_receiver_z int 0

scoreboard players set impulse_receiver_response int 0
scoreboard players set impulse_receiver_x int 0
scoreboard players set impulse_receiver_y int 0
scoreboard players set impulse_receiver_z int 0
scoreboard players set impulse_receiver_sx int 0
scoreboard players set impulse_receiver_sy int 0
scoreboard players set impulse_receiver_sz int 0
scoreboard players set impulse_receiver_fx int 0
scoreboard players set impulse_receiver_fy int 0
scoreboard players set impulse_receiver_fz int 0