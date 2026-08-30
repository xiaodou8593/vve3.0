#vve:_debug_detect
# 介质探测测试
# 输入执行位置
# 输入执行朝向
# 输入macro {detect_func:""}
# 传入世界实体为执行者

execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^0.25
data modify storage math:io xyz set from entity @s Pos
execute store result score c_vx int run data get storage math:io xyz[0] 10000
execute store result score c_vy int run data get storage math:io xyz[1] 10000
execute store result score c_vz int run data get storage math:io xyz[2] 10000
tp @s ~ ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score c_x int run data get storage math:io xyz[0] 10000
execute store result score c_y int run data get storage math:io xyz[1] 10000
execute store result score c_z int run data get storage math:io xyz[2] 10000
scoreboard players set c_mass int 1
$execute at @s run function $(detect_func)

# 区块安全
tp @s 0 0 0