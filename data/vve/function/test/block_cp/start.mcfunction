#vve:test/block_cp/start

function vve:_init

scoreboard players set vve_solid_friction int 3500

kill @e[tag=test]

# 生成测试程序实体
tag @e[tag=result] remove result
summon item_display 193 -53 53 {Tags:["test", "object_test", "result"], CustomName:{"text":"object_test"},teleport_duration:1,interpolation_duration:1,brightness:{sky:15,block:15}}
item replace entity @e[tag=result,limit=1] container.0 with minecraft:pearlescent_froglight
data modify entity @e[tag=result,limit=1] transformation.scale set value [0.5f,0.5f,0.5f]
scoreboard players set a int 2500
scoreboard players set mass int 8
scoreboard players set inertia int 500
execute at @e[tag=result,limit=1] rotated 0.0 0.0 as @e[tag=math_marker,limit=1] run function vve:object/_anchor_to
execute as @e[tag=result,limit=1] run function vve:block/_store

execute as @e[tag=result,limit=1] run function marker_control:data/_get

# 设置测试程序主函数和销毁函数
data modify storage marker_control:io result.tick_func set value "vve:test/block_cp/main"
data modify storage marker_control:io result.del_func set value "vve:test/block_cp/end"

execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked
tag @e[tag=result,limit=1] add entity_todel

# 设置测试程序运行时间
scoreboard players set @e[tag=result,limit=1] killtime 10
scoreboard players set test int -1

# 设置旋转
execute at @e[tag=result,limit=1] positioned ~8.0 ~1.0 ~0.0 run function vve:test/block_cp/rotate_here