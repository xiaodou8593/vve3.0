#vve:object/_rotate_here
# 设置一个转轴朝向执行位置，大小为距离的角速度
# 输入执行位置
# 需要传入世界实体为执行者

tp @s ~ ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score angular_x int run data get storage math:io xyz[0] 10000
execute store result score angular_y int run data get storage math:io xyz[1] 10000
execute store result score angular_z int run data get storage math:io xyz[2] 10000
scoreboard players operation angular_x int -= x int
scoreboard players operation angular_y int -= y int
scoreboard players operation angular_z int -= z int

function vve:object/_set_angular