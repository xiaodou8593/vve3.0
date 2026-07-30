#vve_examples:roll_head/main_c
# vve_examples:roll_head/tick调用
# 实体对象主程序

function vve_examples:roll_head/_get
# 运动学迭代
execute as 0-0-0-0-0 run function vve:object/_iter_motion
# 介质探测
execute as 0-0-0-0-0 run function vve_examples:roll_head/_iter_cpoints_c
# 力学迭代
scoreboard players operation vy int -= vve_gravity int
# 介质响应
execute if score shift_response int matches 1 run function vve:object/_apply_shift
execute if score impulse_response int matches 1 run function vve:object/_apply_impulse_f
execute if score couple_response int matches 1 as 0-0-0-0-0 run function vve:object/_apply_couple
function vve:object/_apply_friction
# 姿态角速度修正
execute if score grab_layer_response int matches 3.. if score grab_layer_receiver_v_norm int < grab_layer_regular_v int as 0-0-0-0-0 run function vve:object/_regular
# 计算欧拉角
execute as 0-0-0-0-0 run function math:uvw/_to_euler
# 玩家旁观
#execute unless entity @s[tag=spectating] run function vve_examples:roll_head/main_sync_cam
execute if entity @s[tag=spectating] run function vve_examples:roll_head/main_spectator
# 运动同步
function vve_examples:roll_head/_sync_motion_euler
function vve_examples:roll_head/_store

# 坐标安全
execute unless score y int matches -640000..5120000 run kill @s