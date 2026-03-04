#vve:test/block_cp/main

execute unless score test int matches -1 run return fail
scoreboard players set @s killtime 10

function vve:block/_get
# 运动学迭代
execute as 0-0-0-0-0 run function vve:object/_iter_motion
# 介质探测
execute as 0-0-0-0-0 run function vve:block/_iter_cpoints
#execute if score grab_layer_response int matches 1.. run scoreboard players set test int 1
#function vve:_print_response
# 力学迭代
scoreboard players operation vy int -= vve_gravity int
# 介质响应
execute if score shift_response int matches 1 run function vve:object/_apply_shift
execute if score impulse_response int matches 1 as 0-0-0-0-0 run function vve:block/_apply_impulse
function vve:object/_apply_friction
#function vve:point/_print
# 运动同步
function vve:object/_sync_motion
function vve:block/_store