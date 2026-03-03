#vve:object/_iter_motion
# 对临时对象运行一次运动学迭代
# 传入世界实体为执行者

# 速度迭代
scoreboard players operation x int += vx int
scoreboard players operation y int += vy int
scoreboard players operation z int += vz int

# 角速度迭代
# 旋转度数是弧度缩放90/pi
execute store result entity @s Rotation[0] float -0.0000286478897565 run scoreboard players operation quat_phi int += angular_len int
scoreboard players operation quat_phi int %= 314159265 int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score cos int run data get storage math:io xyz[2] 10000
execute store result score sin int run data get storage math:io xyz[0] 10000

scoreboard players operation quat_x int = quat_start_x int
scoreboard players operation quat_x int *= cos int
scoreboard players operation sstemp int = quat_orth_x int
scoreboard players operation sstemp int *= sin int
scoreboard players operation quat_x int += sstemp int
scoreboard players operation quat_x int /= 10000 int

scoreboard players operation quat_y int = quat_start_y int
scoreboard players operation quat_y int *= cos int
scoreboard players operation sstemp int = quat_orth_y int
scoreboard players operation sstemp int *= sin int
scoreboard players operation quat_y int += sstemp int
scoreboard players operation quat_y int /= 10000 int

scoreboard players operation quat_z int = quat_start_z int
scoreboard players operation quat_z int *= cos int
scoreboard players operation sstemp int = quat_orth_z int
scoreboard players operation sstemp int *= sin int
scoreboard players operation quat_z int += sstemp int
scoreboard players operation quat_z int /= 10000 int

scoreboard players operation quat_w int = quat_start_w int
scoreboard players operation quat_w int *= cos int
scoreboard players operation sstemp int = quat_orth_w int
scoreboard players operation sstemp int *= sin int
scoreboard players operation quat_w int += sstemp int
scoreboard players operation quat_w int /= 10000 int

# 四元数转局部坐标系
execute store result score ivec_y int store result score ivec_z int store result score sstempxw int run scoreboard players operation ivec_x int = quat_x int
scoreboard players operation ivec_x int *= quat_x int
execute store result score jvec_z int store result score sstempyw int run scoreboard players operation jvec_y int = quat_y int
scoreboard players operation jvec_y int *= quat_y int
execute store result score sstempzw int run scoreboard players operation kvec_z int = quat_z int
scoreboard players operation kvec_z int *= quat_z int
scoreboard players operation sstempx2 int = ivec_x int
scoreboard players operation sstempy2 int = jvec_y int
scoreboard players operation sstempw2 int = quat_w int
scoreboard players operation sstempw2 int *= quat_w int
scoreboard players operation ivec_x int += sstempw2 int
scoreboard players operation ivec_x int -= jvec_y int
scoreboard players operation ivec_x int -= kvec_z int
scoreboard players operation jvec_y int += sstempw2 int
scoreboard players operation jvec_y int -= sstempx2 int
scoreboard players operation jvec_y int -= kvec_z int
scoreboard players operation kvec_z int += sstempw2 int
scoreboard players operation kvec_z int -= sstempx2 int
scoreboard players operation kvec_z int -= sstempy2 int

scoreboard players operation ivec_x int /= 10000 int
scoreboard players operation jvec_y int /= 10000 int
scoreboard players operation kvec_z int /= 10000 int

scoreboard players operation ivec_y int *= quat_y int
scoreboard players operation jvec_x int = ivec_y int
scoreboard players operation sstempzw int *= quat_w int
scoreboard players operation ivec_y int += sstempzw int
scoreboard players operation jvec_x int -= sstempzw int

scoreboard players operation ivec_y int /= 5000 int
scoreboard players operation jvec_x int /= 5000 int

scoreboard players operation ivec_z int *= quat_z int
scoreboard players operation kvec_x int = ivec_z int
scoreboard players operation sstempyw int *= quat_w int
scoreboard players operation ivec_z int -= sstempyw int
scoreboard players operation kvec_x int += sstempyw int

scoreboard players operation ivec_z int /= 5000 int
scoreboard players operation kvec_x int /= 5000 int

scoreboard players operation jvec_z int *= quat_z int
scoreboard players operation kvec_y int = jvec_z int
scoreboard players operation sstempxw int *= quat_w int
scoreboard players operation jvec_z int += sstempxw int
scoreboard players operation kvec_y int -= sstempxw int

scoreboard players operation jvec_z int /= 5000 int
scoreboard players operation kvec_y int /= 5000 int