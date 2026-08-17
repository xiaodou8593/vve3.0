#vve:euler_control/damp_iter
# vve:euler_control/main调用
# vve:euler_control/main_psi调用
# vve:euler_control/main_theta_psi调用

scoreboard players operation res int += sstemp_v int
execute store result score sstemp_max int run scoreboard players operation sstemp_min int = vve_euler_max int
scoreboard players operation sstemp_min int *= -1 int
scoreboard players operation sstemp_x int = res int
scoreboard players operation sstemp_x int < sstemp_max int
scoreboard players operation sstemp_x int > sstemp_min int
scoreboard players operation sstemp_v int *= vve_euler_k int
scoreboard players operation sstemp_v int /= vve_euler_b int
scoreboard players operation sstemp_x int *= vve_euler_f int
scoreboard players operation sstemp_x int /= 100000 int
scoreboard players operation sstemp_v int -= sstemp_x int
scoreboard players operation sstemp_0 int = vve_euler_vmax int

# 限制最大速度
scoreboard players set sstemp_sign int 1
execute if score res int matches ..-1 run scoreboard players set sstemp_sign int -1
scoreboard players operation res int *= sstemp_sign int
scoreboard players operation sstemp_0 int = vve_euler_max int
scoreboard players operation sstemp_0 int /= 2 int
scoreboard players operation sstemp_x int = res int
execute if score sstemp_x int <= sstemp_0 int run scoreboard players operation res int /= vve_euler_vmax int
execute if score sstemp_x int > sstemp_0 int run function vve:euler_control/damp_iter_branch_1
scoreboard players operation res int *= sstemp_sign int
scoreboard players operation res int *= -1 int
execute if score res int matches 1.. run scoreboard players operation sstemp_v int < res int
execute if score res int matches ..-1 run scoreboard players operation sstemp_v int > res int