#vve:object/_receive_grab_layer
# 接收附着层响应
# 迭代receiver{...}

scoreboard players operation grab_layer_receiver_response int += grab_layer_response int

# 最大切比雪夫速度
scoreboard players operation stemp_abs int = c_vx int
execute if score stemp_abs int matches ..-1 run scoreboard players operation stemp_abs int *= -1 int
scoreboard players operation grab_layer_receiver_v_max int > stemp_abs int

scoreboard players operation stemp_abs int = c_vy int
execute if score stemp_abs int matches ..-1 run scoreboard players operation stemp_abs int *= -1 int
scoreboard players operation grab_layer_receiver_v_max int > stemp_abs int

scoreboard players operation stemp_abs int = c_vz int
execute if score stemp_abs int matches ..-1 run scoreboard players operation stemp_abs int *= -1 int
scoreboard players operation grab_layer_receiver_v_max int > stemp_abs int

# 最大法向速度
scoreboard players operation stemp_abs int = stemp_v int
execute if score stemp_abs int matches ..-1 run scoreboard players operation stemp_abs int *= -1 int
scoreboard players operation grab_layer_receiver_v_norm int > stemp_abs int