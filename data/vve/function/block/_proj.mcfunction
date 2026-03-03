#vve:block/_proj
# 把数据模板投射到临时对象
# 输入数据模板storage vve:io input

execute store result score a int run data get storage vve:io input.a 10000
execute store result score mass int run data get storage vve:io input.mass
execute store result score inertia int run data get storage vve:io input.inertia 10000
execute store result score x int run data get storage vve:io input.center[0] 10000
execute store result score y int run data get storage vve:io input.center[1] 10000
execute store result score z int run data get storage vve:io input.center[2] 10000
execute store result score vx int run data get storage vve:io input.velocity[0] 10000
execute store result score vy int run data get storage vve:io input.velocity[1] 10000
execute store result score vz int run data get storage vve:io input.velocity[2] 10000
execute store result score angular_x int run data get storage vve:io input.angular_vec[0] 10000
execute store result score angular_y int run data get storage vve:io input.angular_vec[1] 10000
execute store result score angular_z int run data get storage vve:io input.angular_vec[2] 10000
execute store result score angular_len int run data get storage vve:io input.angular_len 10000
execute store result score ivec_x int run data get storage vve:io input.ivec[0] 10000
execute store result score ivec_y int run data get storage vve:io input.ivec[1] 10000
execute store result score ivec_z int run data get storage vve:io input.ivec[2] 10000
execute store result score jvec_x int run data get storage vve:io input.jvec[0] 10000
execute store result score jvec_y int run data get storage vve:io input.jvec[1] 10000
execute store result score jvec_z int run data get storage vve:io input.jvec[2] 10000
execute store result score kvec_x int run data get storage vve:io input.kvec[0] 10000
execute store result score kvec_y int run data get storage vve:io input.kvec[1] 10000
execute store result score kvec_z int run data get storage vve:io input.kvec[2] 10000
execute store result score quat_x int run data get storage vve:io input.xyzw[0] 10000
execute store result score quat_y int run data get storage vve:io input.xyzw[1] 10000
execute store result score quat_z int run data get storage vve:io input.xyzw[2] 10000
execute store result score quat_w int run data get storage vve:io input.xyzw[3] 10000
execute store result score quat_start_x int run data get storage vve:io input.start_xyzw[0] 10000
execute store result score quat_start_y int run data get storage vve:io input.start_xyzw[1] 10000
execute store result score quat_start_z int run data get storage vve:io input.start_xyzw[2] 10000
execute store result score quat_start_w int run data get storage vve:io input.start_xyzw[3] 10000
execute store result score quat_orth_x int run data get storage vve:io input.orth_xyzw[0] 10000
execute store result score quat_orth_y int run data get storage vve:io input.orth_xyzw[1] 10000
execute store result score quat_orth_z int run data get storage vve:io input.orth_xyzw[2] 10000
execute store result score quat_orth_w int run data get storage vve:io input.orth_xyzw[3] 10000
execute store result score quat_phi int run data get storage vve:io input.quat_phi 10000