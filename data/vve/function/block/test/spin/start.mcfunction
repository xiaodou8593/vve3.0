#vve:block/test/spin/start
# 需要安装math3.1_gelib

function vve:_consts
function vve:block/init

# 测试场地
execute as @e[tag=math_marker,limit=1] run function vve:test_coord/_topos
execute at @e[tag=math_marker,limit=1] run fill ~-3 ~ ~-3 ~3 ~5 ~3 air
execute at @e[tag=math_marker,limit=1] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 grass_block

tag @e[tag=test] remove test

# 生成测试程序实体
data modify storage vve:io input set from storage vve:class block_plate
function vve:block/_proj
execute as @e[tag=math_marker,limit=1] at @s positioned ~ ~4 ~ rotated 0.0 0.0 run function vve:object/_anchor_to
function vve:block/_model
data modify storage vve:io input set from storage vve:io result
data modify entity @e[tag=math_marker,limit=1] Pos set from storage vve:io input.center
execute at @e[tag=math_marker,limit=1] run function vve:block/_new
tag @e[tag=result,limit=1] add test
tag @e[tag=result,limit=1] remove vve_block

execute as @e[tag=result,limit=1] run function marker_control:data/_get

# 设置测试程序主函数和销毁函数
data modify storage marker_control:io result.tick_func set value "vve:block/test/spin/main"
data modify storage marker_control:io result.del_func set value "vve:block/test/spin/end"

execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked
tag @e[tag=result,limit=1] add entity_todel

# 设置测试程序运行时间
scoreboard players set @e[tag=result,limit=1] killtime 10
scoreboard players set test int -1
scoreboard players set test_n int 0

# 设置旋转
execute as @e[tag=result,limit=1] at @s positioned ~5.0 ~5.0 ~5.0 run function vve:object/_rotate_here_as