#vve:cpoint/_render_debug
# 需要传入世界实体为执行者

execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get c_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get c_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get c_z int
scoreboard players operation vec_x int = c_vx int
scoreboard players operation vec_y int = c_vy int
scoreboard players operation vec_z int = c_vz int
scoreboard players operation vec_x int *= 10 int
scoreboard players operation vec_y int *= 10 int
scoreboard players operation vec_z int *= 10 int
data modify entity @s Pos set from storage math:io xyz
scoreboard players set vec_n int 50
data modify storage math:io render_command set value \
	"particle dust{color:[1.0, 0.1, 0.1], scale:0.05} ~ ~ ~ 0.0 0.0 0.0 0.0 1 force @a"
execute at @s run function math:vec/_render_debug