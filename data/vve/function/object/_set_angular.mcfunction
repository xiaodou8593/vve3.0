#vve:object/_set_angular
# 设置临时对象的角速度
# 输入_this:{<angular_x,int,100w>,<angular_y,int,100w>,<angular_z,int,100w>}
# 输出_this:{<angular_len,int,100w>,quaternion{...}}
# 传入世界实体为执行者

# 计算角速度转轴和模长
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get angular_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get angular_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get angular_z int
data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0 ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score uvec_x int run data get storage math:io xyz[0] 10000
execute store result score uvec_y int run data get storage math:io xyz[1] 10000
execute store result score uvec_z int run data get storage math:io xyz[2] 10000

scoreboard players operation angular_len int = angular_x int
execute if score angular_x int matches ..-1 run scoreboard players operation angular_len int *= -1 int
execute if score angular_y int matches 1.. run scoreboard players operation angular_len int += angular_y int
execute if score angular_y int matches ..-1 run scoreboard players operation angular_len int -= angular_y int
execute if score angular_z int matches 1.. run scoreboard players operation angular_len int += angular_z int
execute if score angular_z int matches ..-1 run scoreboard players operation angular_len int -= angular_z int

scoreboard players operation sstempd int = uvec_x int
execute if score uvec_x int matches ..-1 run scoreboard players operation sstempd int *= -1 int
execute if score uvec_y int matches 1.. run scoreboard players operation sstempd int += uvec_y int
execute if score uvec_y int matches ..-1 run scoreboard players operation sstempd int -= uvec_y int
execute if score uvec_z int matches 1.. run scoreboard players operation sstempd int += uvec_z int
execute if score uvec_z int matches ..-1 run scoreboard players operation sstempd int -= uvec_z int

execute store result score sstemp_mod int run scoreboard players operation angular_len int *= 100 int
scoreboard players operation angular_len int /= sstempd int
scoreboard players operation sstemp_mod int %= sstempd int
scoreboard players operation sstemp_mod int *= 100 int
scoreboard players operation sstemp_mod int /= sstempd int
scoreboard players operation angular_len int *= 100 int
scoreboard players operation angular_len int += sstemp_mod int

# 当前姿态设置为旋转初始姿态
scoreboard players operation quat_start_x int = quat_x int
scoreboard players operation quat_start_y int = quat_y int
scoreboard players operation quat_start_z int = quat_z int
scoreboard players operation quat_start_w int = quat_w int
scoreboard players set quat_phi int 0

# 计算正交四元数
#x分量
scoreboard players operation quat_orth_x int = uvec_x int
scoreboard players operation quat_orth_x int *= quat_start_w int
scoreboard players operation sstemp int = uvec_y int
scoreboard players operation sstemp int *= quat_start_z int
scoreboard players operation quat_orth_x int += sstemp int
scoreboard players operation sstemp int = uvec_z int
scoreboard players operation sstemp int *= quat_start_y int
scoreboard players operation quat_orth_x int -= sstemp int
scoreboard players operation quat_orth_x int /= 10000 int

#y分量
scoreboard players operation quat_orth_y int = uvec_y int
scoreboard players operation quat_orth_y int *= quat_start_w int
scoreboard players operation sstemp int = uvec_x int
scoreboard players operation sstemp int *= quat_start_z int
scoreboard players operation quat_orth_y int -= sstemp int
scoreboard players operation sstemp int = uvec_z int
scoreboard players operation sstemp int *= quat_start_x int
scoreboard players operation quat_orth_y int += sstemp int
scoreboard players operation quat_orth_y int /= 10000 int

#z分量
scoreboard players operation quat_orth_z int = uvec_x int
scoreboard players operation quat_orth_z int *= quat_start_y int
scoreboard players operation sstemp int = uvec_y int
scoreboard players operation sstemp int *= quat_start_x int
scoreboard players operation quat_orth_z int -= sstemp int
scoreboard players operation sstemp int = uvec_z int
scoreboard players operation sstemp int *= quat_start_w int
scoreboard players operation quat_orth_z int += sstemp int
scoreboard players operation quat_orth_z int /= 10000 int

#w分量
scoreboard players operation quat_orth_w int = uvec_x int
scoreboard players operation quat_orth_w int *= quat_start_x int
scoreboard players operation sstemp int = uvec_y int
scoreboard players operation sstemp int *= quat_start_y int
scoreboard players operation quat_orth_w int += sstemp int
scoreboard players operation sstemp int = uvec_z int
scoreboard players operation sstemp int *= quat_start_z int
scoreboard players operation quat_orth_w int += sstemp int
scoreboard players operation quat_orth_w int /= -10000 int