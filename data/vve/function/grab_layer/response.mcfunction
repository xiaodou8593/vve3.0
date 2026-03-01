#vve:grab_layer/response

# 摩擦响应
scoreboard players operation friction_response int = vve_grab_friction int

# 脱离附着层的速度忽略
execute if score stemp_v int matches ..-1 run return fail

# 速度过大直接忽略
execute if score stemp_v int > grab_layer_v int run return fail

# 位移至特定深度
scoreboard players set shift_response int 1
scoreboard players operation stemp_depth int = grab_depth int
scoreboard players operation stemp_depth int -= grab_depth_mid int
scoreboard players operation shift_x int = nvec_x int
scoreboard players operation shift_y int = nvec_y int
scoreboard players operation shift_z int = nvec_z int
scoreboard players operation shift_x int *= stemp_depth int
scoreboard players operation shift_y int *= stemp_depth int
scoreboard players operation shift_z int *= stemp_depth int
scoreboard players operation shift_x int /= 10000 int
scoreboard players operation shift_y int /= 10000 int
scoreboard players operation shift_z int /= 10000 int

# 施加支持力冲量
scoreboard players set impulse_response int 1
scoreboard players operation impulse_x int = c_x int
scoreboard players operation impulse_y int = c_y int
scoreboard players operation impulse_z int = c_z int
scoreboard players operation impulse_fx int = nvec_x int
scoreboard players operation impulse_fy int = nvec_y int
scoreboard players operation impulse_fz int = nvec_z int
scoreboard players operation impulse_fx int *= stemp_v int
scoreboard players operation impulse_fy int *= stemp_v int
scoreboard players operation impulse_fz int *= stemp_v int
scoreboard players operation impulse_fx int /= 10000 int
scoreboard players operation impulse_fy int /= 10000 int
scoreboard players operation impulse_fz int /= 10000 int
scoreboard players operation impulse_fx int *= c_mass int
scoreboard players operation impulse_fy int *= c_mass int
scoreboard players operation impulse_fz int *= c_mass int