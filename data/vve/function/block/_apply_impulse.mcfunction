#vve:block/_apply_impulse
# 应用冲量响应
# 输入impulse{...}
# 需要传入世界实体为执行者

# 输入位矢向量
scoreboard players operation vec_x int = impulse_x int
scoreboard players operation vec_y int = impulse_y int
scoreboard players operation vec_z int = impulse_z int
scoreboard players operation vec_x int -= x int
scoreboard players operation vec_y int -= y int
scoreboard players operation vec_z int -= z int
# 输入冲量向量
scoreboard players operation fvec_x int = impulse_fx int
scoreboard players operation fvec_y int = impulse_fy int
scoreboard players operation fvec_z int = impulse_fz int
# 计算叉乘
function math:vec/_cross_fvec

# 改变角速度
execute store result score angular_x int run scoreboard players operation vec_x int /= inertia int
execute store result score angular_y int run scoreboard players operation vec_y int /= inertia int
execute store result score angular_z int run scoreboard players operation vec_z int /= inertia int
function vve:object/_set_angular

# 改变速度
scoreboard players operation fvec_x int /= mass int
scoreboard players operation fvec_y int /= mass int
scoreboard players operation fvec_z int /= mass int
scoreboard players operation vx int += fvec_x int
scoreboard players operation vy int += fvec_y int
scoreboard players operation vz int += fvec_z int