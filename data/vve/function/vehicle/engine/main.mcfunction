#vve:vehicle/engine/main
# vve:vehicle/main_c调用

function math:damp/_iter

# 判定迭代终止
function math:damp/_energy
scoreboard players operation temp_e int = res int
function math:damp/_threshold
scoreboard players operation res int *= 10 int
execute if score temp_e int <= res int run function math:damp/_converge

# 获取发动机功率
scoreboard players operation temp_p int = target_power int
scoreboard players operation temp_p int += damp_x int

# 获取前进速度
scoreboard players operation stemp_v int = vx int
scoreboard players operation stemp_v int *= kvec_x int
scoreboard players operation stemp_0 int = vy int
scoreboard players operation stemp_0 int *= kvec_y int
scoreboard players operation stemp_v int += stemp_0 int
scoreboard players operation stemp_0 int = vz int
scoreboard players operation stemp_0 int *= kvec_z int
scoreboard players operation stemp_v int += stemp_0 int
scoreboard players operation stemp_v int /= 10000 int

# 推进速度
execute if score shift_cnt_front int matches 1.. if score stemp_v int < v_max int run function vve:vehicle/engine/gain_velocity