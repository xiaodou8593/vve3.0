#vve:test/point/start

function vve:_init

# 生成测试程序实体
tag @e[tag=result] remove result
summon item_display 193 -55 53 {Tags:["test", "point_test", "result"], CustomName:'{"text":"point_test"}',teleport_duration:1,brightness:{sky:15,block:15}}
item replace entity @e[tag=result,limit=1] container.0 with verdant_froglight
data modify entity @e[tag=result,limit=1] transformation.scale set value [0.075f,0.075f,0.075f]
scoreboard players set inp int 2353
execute positioned 193 -55 53 rotated 0.0 0.0 as @e[tag=math_marker,limit=1] run function vve:point/_anchor_to
#function vve:point/_print
execute as @e[tag=result,limit=1] run function vve:point/_store

execute as @e[tag=result,limit=1] run function marker_control:data/_get

# 设置测试程序主函数和销毁函数
data modify storage marker_control:io result.tick_func set value "vve:test/point/main"
data modify storage marker_control:io result.del_func set value "vve:test/point/end"

execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked
tag @e[tag=result,limit=1] add entity_todel

# 设置测试程序运行时间
scoreboard players set @e[tag=result,limit=1] killtime 100

scoreboard players set test_n int 0