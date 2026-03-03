#vve:object/_get_cpoint
# 局部坐标获取碰撞点
# 输入{<u,int,1w>,<v,int,1w>,<w,int,1w>}
# 输出cpoint:{center:{...},velocity:{...}}

# 局部坐标转世界坐标
scoreboard players operation c_vx int = ivec_x int
scoreboard players operation c_vx int *= u int
scoreboard players operation sstemp int = jvec_x int
scoreboard players operation sstemp int *= v int
scoreboard players operation c_vx int += sstemp int
scoreboard players operation sstemp int = kvec_x int
scoreboard players operation sstemp int *= w int
scoreboard players operation c_vx int += sstemp int
scoreboard players operation c_vx int /= 10000 int

scoreboard players operation c_vy int = ivec_y int
scoreboard players operation c_vy int *= u int
scoreboard players operation sstemp int = jvec_y int
scoreboard players operation sstemp int *= v int
scoreboard players operation c_vy int += sstemp int
scoreboard players operation sstemp int = kvec_y int
scoreboard players operation sstemp int *= w int
scoreboard players operation c_vy int += sstemp int
scoreboard players operation c_vy int /= 10000 int

scoreboard players operation c_vz int = ivec_z int
scoreboard players operation c_vz int *= u int
scoreboard players operation sstemp int = jvec_z int
scoreboard players operation sstemp int *= v int
scoreboard players operation c_vz int += sstemp int
scoreboard players operation sstemp int = kvec_z int
scoreboard players operation sstemp int *= w int
scoreboard players operation c_vz int += sstemp int
scoreboard players operation c_vz int /= 10000 int

scoreboard players operation c_x int = c_vx int
scoreboard players operation c_y int = c_vy int
scoreboard players operation c_z int = c_vz int
scoreboard players operation c_x int += x int
scoreboard players operation c_y int += y int
scoreboard players operation c_z int += z int

# 叉乘计算线速度
scoreboard players operation sstempx int = c_vx int
scoreboard players operation c_vx int = angular_y int
scoreboard players operation c_vx int *= c_vz int
scoreboard players operation sstemp0 int = c_vy int
scoreboard players operation sstemp0 int *= angular_z int
scoreboard players operation c_vx int -= sstemp0 int
scoreboard players operation c_vx int /= 10000 int

scoreboard players operation sstempy int = c_vy int
scoreboard players operation c_vy int = angular_z int
scoreboard players operation c_vy int *= c_vx int
scoreboard players operation sstemp0 int = c_vz int
scoreboard players operation sstemp0 int *= angular_x int
scoreboard players operation c_vy int -= sstemp0 int
scoreboard players operation c_vy int /= 10000 int

scoreboard players operation c_vz int = sstempy int
scoreboard players operation c_vz int *= angular_x int
scoreboard players operation sstemp0 int = angular_y int
scoreboard players operation sstemp0 int *= sstempx int
scoreboard players operation c_vz int -= sstemp0 int
scoreboard players operation c_vz int /= 10000 int

# 叠加平动速度
scoreboard players operation c_vx int += vx int
scoreboard players operation c_vy int += vy int
scoreboard players operation c_vz int += vz int