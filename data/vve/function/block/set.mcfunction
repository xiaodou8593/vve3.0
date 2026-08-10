#vve:block/set
# vve:block/_new调用

execute store result score @s a run data get storage vve:io input.a 10000
execute store result score @s mass run data get storage vve:io input.mass
execute store result score @s inertia run data get storage vve:io input.inertia 100
execute store result score @s x run data get storage vve:io input.center[0] 10000
execute store result score @s y run data get storage vve:io input.center[1] 10000
execute store result score @s z run data get storage vve:io input.center[2] 10000
execute store result score @s vx run data get storage vve:io input.velocity[0] 10000
execute store result score @s vy run data get storage vve:io input.velocity[1] 10000
execute store result score @s vz run data get storage vve:io input.velocity[2] 10000
execute store result score @s angular_x run data get storage vve:io input.angular_vec[0] 1000000
execute store result score @s angular_y run data get storage vve:io input.angular_vec[1] 1000000
execute store result score @s angular_z run data get storage vve:io input.angular_vec[2] 1000000
execute store result score @s angular_len run data get storage vve:io input.angular_len 1000000
execute store result score @s ivec_x run data get storage vve:io input.ivec[0] 10000
execute store result score @s ivec_y run data get storage vve:io input.ivec[1] 10000
execute store result score @s ivec_z run data get storage vve:io input.ivec[2] 10000
execute store result score @s jvec_x run data get storage vve:io input.jvec[0] 10000
execute store result score @s jvec_y run data get storage vve:io input.jvec[1] 10000
execute store result score @s jvec_z run data get storage vve:io input.jvec[2] 10000
execute store result score @s kvec_x run data get storage vve:io input.kvec[0] 10000
execute store result score @s kvec_y run data get storage vve:io input.kvec[1] 10000
execute store result score @s kvec_z run data get storage vve:io input.kvec[2] 10000
execute store result score @s quat_x run data get storage vve:io input.xyzw[0] 10000
execute store result score @s quat_y run data get storage vve:io input.xyzw[1] 10000
execute store result score @s quat_z run data get storage vve:io input.xyzw[2] 10000
execute store result score @s quat_w run data get storage vve:io input.xyzw[3] 10000
execute store result score @s quat_start_x run data get storage vve:io input.start_xyzw[0] 10000
execute store result score @s quat_start_y run data get storage vve:io input.start_xyzw[1] 10000
execute store result score @s quat_start_z run data get storage vve:io input.start_xyzw[2] 10000
execute store result score @s quat_start_w run data get storage vve:io input.start_xyzw[3] 10000
execute store result score @s quat_orth_x run data get storage vve:io input.orth_xyzw[0] 10000
execute store result score @s quat_orth_y run data get storage vve:io input.orth_xyzw[1] 10000
execute store result score @s quat_orth_z run data get storage vve:io input.orth_xyzw[2] 10000
execute store result score @s quat_orth_w run data get storage vve:io input.orth_xyzw[3] 10000
execute store result score @s quat_phi run data get storage vve:io input.quat_phi 10000