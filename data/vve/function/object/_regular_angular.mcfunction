#vve:object/_regular_angular
# 消除法向角速度
# 输入nvec{...}
# 输入receiver{...}
# 需要传入世界实体为执行者

scoreboard players operation angular_x int /= 100 int
scoreboard players operation angular_y int /= 100 int
scoreboard players operation angular_z int /= 100 int

scoreboard players operation angular_x int *= nvec_x int
scoreboard players operation angular_y int *= nvec_y int
scoreboard players operation angular_z int *= nvec_z int
scoreboard players operation angular_x int += angular_y int
scoreboard players operation angular_x int += angular_z int
execute store result score angular_y int store result score angular_z int run scoreboard players operation angular_x int /= 10000 int

scoreboard players operation angular_x int *= nvec_x int
scoreboard players operation angular_y int *= nvec_y int
scoreboard players operation angular_z int *= nvec_z int
scoreboard players operation angular_x int /= 100 int
scoreboard players operation angular_y int /= 100 int
scoreboard players operation angular_z int /= 100 int

function vve:object/_set_angular