#vve:object/_sync_motion_euler
# 提供object实体欧拉角运动同步方案
# 输入math:euler{<theta,int,1w>,<phi,int,1w>,<psi,int,1w>}
# 输出storage vve:io result
# 传入执行实体(非玩家)

data modify storage vve:io result set value {start_interpolation:0}
execute if predicate vve:quat_cmp run data remove storage vve:io result.start_interpolation
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get z int
data modify storage vve:io result.Pos set from storage math:io xyz

# 俯仰偏航角存入Rotation
execute store result storage math:io rotation[0] float -0.0001 run scoreboard players get theta int
execute store result storage math:io rotation[1] float 0.0001 run scoreboard players get phi int
data modify storage vve:io result.Rotation set from storage math:io rotation

# 将psi角转四元数
execute store result entity 0-0-0-0-0 Rotation[0] float -0.00005 run scoreboard players get psi int
execute as 0-0-0-0-0 at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity 0-0-0-0-0 Pos
execute store result storage math:io xyzw[3] float 0.00000001 run data get storage math:io xyz[2] 100000000
execute store result score sin int run data get storage math:io xyz[0] 10000
scoreboard players operation iquat_x int = kvec_x int
scoreboard players operation iquat_y int = kvec_y int
scoreboard players operation iquat_z int = kvec_z int
execute store result storage math:io xyzw[0] float 0.00000001 run scoreboard players operation iquat_x int *= sin int
execute store result storage math:io xyzw[1] float 0.00000001 run scoreboard players operation iquat_y int *= sin int
execute store result storage math:io xyzw[2] float 0.00000001 run scoreboard players operation iquat_z int *= sin int
data modify storage vve:io result.transformation.left_rotation set from storage math:io xyzw

data modify entity @s {} merge from storage vve:io result