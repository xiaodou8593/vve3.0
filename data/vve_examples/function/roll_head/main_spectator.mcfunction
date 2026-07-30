#vve_examples:roll_head/main_spectator
# 旁观者主程序
# vve_examples:roll_head/main_c调用

scoreboard players operation tempid int = @s int
execute as @a[tag=vve_id] if score @s vve_id = tempid int run tag @s add tmp
execute unless entity @a[tag=tmp,limit=1] run return run tag @s remove spectating
execute at @s unless entity @a[tag=tmp,distance=..1,limit=1] run return run function vve_examples:roll_head/exit_spectating
execute if entity @a[tag=tmp,gamemode=!spectator,limit=1] run return run function vve_examples:roll_head/exit_spectating

# 获取玩家输入
scoreboard players set input_w int 0
scoreboard players set input_a int 0
scoreboard players set input_s int 0
scoreboard players set input_d int 0
scoreboard players set input_ctrl int 0
scoreboard players set input_shift int 0
scoreboard players set input_space int 0
execute as @a[tag=tmp,limit=1] run function vve_examples:test_car/control/get_signal_true

# 施加冲量
scoreboard players operation impulse_x int = x int
scoreboard players operation impulse_y int = y int
scoreboard players operation impulse_z int = z int
scoreboard players operation impulse_x int += jvec_x int
scoreboard players operation impulse_y int += jvec_y int
scoreboard players operation impulse_z int += jvec_z int
scoreboard players operation impulse_x int += jvec_x int
scoreboard players operation impulse_y int += jvec_y int
scoreboard players operation impulse_z int += jvec_z int
# 获取左方向
scoreboard players operation impulse_fx int = ivec_x int
scoreboard players operation impulse_fy int = ivec_y int
scoreboard players operation impulse_fz int = ivec_z int
scoreboard players operation impulse_fx int *= 13 int
scoreboard players operation impulse_fy int *= 13 int
scoreboard players operation impulse_fz int *= 13 int
scoreboard players operation impulse_fx int /= 100 int
scoreboard players operation impulse_fy int /= 100 int
scoreboard players operation impulse_fz int /= 100 int
execute if score input_space int matches 0 if score input_a int matches 1 as 0-0-0-0-0 run function vve:object/_apply_impulse
# 获取右方向
scoreboard players operation impulse_fx int *= -1 int
scoreboard players operation impulse_fy int *= -1 int
scoreboard players operation impulse_fz int *= -1 int
execute if score input_space int matches 0 if score input_d int matches 1 as 0-0-0-0-0 run function vve:object/_apply_impulse
# 水平旋转
scoreboard players set couple_x int 0
scoreboard players set couple_y int 1300
scoreboard players set couple_z int 0
execute if score input_space int matches 1 if score input_a int matches 1 as 0-0-0-0-0 run function vve:object/_apply_couple
scoreboard players set couple_y int -1300
execute if score input_space int matches 1 if score input_d int matches 1 as 0-0-0-0-0 run function vve:object/_apply_couple

# 同步欧拉角
#execute as 0-0-0-0-0 run function math:uvw/_to_euler
#execute store result storage math:io rotation[1] float 0.0001 run scoreboard players get phi int
#execute store result storage math:io rotation[0] float -0.0001 run scoreboard players get theta int
#data modify entity 0-0-0-0-0 Rotation set from storage math:io rotation
#scoreboard players operation sstemp_x int = kvec_x int
#scoreboard players operation sstemp_y int = kvec_y int
#scoreboard players operation sstemp_z int = kvec_z int
#scoreboard players operation sstemp_x int /= 2 int
#scoreboard players operation sstemp_y int /= 2 int
#scoreboard players operation sstemp_z int /= 2 int
##scoreboard players remove sstemp_y int 16200
#execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation sstemp_x int += x int
#execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation sstemp_y int += y int
#execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation sstemp_z int += z int
#data modify entity 0-0-0-0-0 Pos set from storage math:io xyz
#scoreboard players operation tempid int = @s vve_id
#execute as @e[tag=vve_examples_roll_head_cam] if score @s int = tempid int run tag @s add tmp_1
#execute at 0-0-0-0-0 run tp @e[tag=tmp_1,limit=1] ~ ~ ~ ~ ~
#tag @e[tag=tmp_1] remove tmp_1

execute as @a[tag=tmp,limit=1] at @s run function vve:shader/roll_linear_from_angle

tag @a[tag=tmp] remove tmp