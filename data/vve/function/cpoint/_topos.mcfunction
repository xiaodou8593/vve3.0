#vve:cpoint/_topos
# 撞击点转执行者坐标
# 传入执行者实体

execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get c_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get c_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get c_z int
data modify entity @s Pos set from storage math:io xyz