#vve:point/_anchor_to
# 执行参数转换为point临时对象
# 输入执行坐标
# 输入执行朝向
# 输入<inp,int>表示速度大小
# 需要传入世界实体为执行者

tp @s ~ ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score x int run data get storage math:io xyz[0] 10000
execute store result score y int run data get storage math:io xyz[1] 10000
execute store result score z int run data get storage math:io xyz[2] 10000

execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score vx int run data get storage math:io xyz[0] 10000
execute store result score vy int run data get storage math:io xyz[1] 10000
execute store result score vz int run data get storage math:io xyz[2] 10000
scoreboard players operation vx int *= inp int
scoreboard players operation vy int *= inp int
scoreboard players operation vz int *= inp int
scoreboard players operation vx int /= 10000 int
scoreboard players operation vy int /= 10000 int
scoreboard players operation vz int /= 10000 int