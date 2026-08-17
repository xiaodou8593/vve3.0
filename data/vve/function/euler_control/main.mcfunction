#vve:euler_control/main
# 欧拉角控制主程序
# 输入vve:object{...}
# 输出vve:couple{...}
# 需要传入世界实体为执行者

function math:uvw/_to_euler
execute if score target_theta int matches -2147483647.. run scoreboard players operation theta int = target_theta int
execute if score target_phi int matches -2147483647.. run scoreboard players operation phi int = target_phi int
execute if score target_psi int matches -2147483647.. run scoreboard players operation psi int = target_psi int
function math:euler/_to_iquat

# 计算转轴和角度差
scoreboard players operation quat_x int *= -1 int
scoreboard players operation quat_y int *= -1 int
scoreboard players operation quat_z int *= -1 int
function math:quat/_mult
scoreboard players operation quat_x int *= -1 int
scoreboard players operation quat_y int *= -1 int
scoreboard players operation quat_z int *= -1 int
execute if score rquat_w int matches ..-1 run function math:rquat/_neg
function math:rquat/_touvec
scoreboard players operation res int *= -2 int
scoreboard players add res int 10000
scoreboard players operation cos int = res int
function math:_arccos_res
scoreboard players operation res int *= -1 int

# 计算当前角速度沿转轴分量
scoreboard players operation sstemp_v int = angular_x int
scoreboard players operation sstemp_v int /= 100 int
scoreboard players operation sstemp_v int *= uvec_x int
scoreboard players operation sstemp_0 int = angular_y int
scoreboard players operation sstemp_0 int /= 100 int
scoreboard players operation sstemp_0 int *= uvec_y int
scoreboard players operation sstemp_v int += sstemp_0 int
scoreboard players operation sstemp_0 int = angular_z int
scoreboard players operation sstemp_0 int /= 100 int
scoreboard players operation sstemp_0 int *= uvec_z int
scoreboard players operation sstemp_v int += sstemp_0 int
scoreboard players operation sstemp_v int /= 10000 int

scoreboard players operation sstemp_v0 int = sstemp_v int
function vve:euler_control/damp_iter

scoreboard players operation sstemp_v int -= sstemp_v0 int
scoreboard players operation couple_x int = uvec_x int
scoreboard players operation couple_y int = uvec_y int
scoreboard players operation couple_z int = uvec_z int
scoreboard players operation couple_x int *= sstemp_v int
scoreboard players operation couple_y int *= sstemp_v int
scoreboard players operation couple_z int *= sstemp_v int
scoreboard players operation couple_x int /= 10000 int
scoreboard players operation couple_y int /= 10000 int
scoreboard players operation couple_z int /= 10000 int

scoreboard players set control_active int 0