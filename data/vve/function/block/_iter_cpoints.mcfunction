#vve:block/_iter_cpoints
# 遍历八个顶点作为碰撞点，进行介质探测
# 输出介质响应(各模块的临时对象)
# 传入世界实体为执行者(不保证Pos位于执行位置)

# 开始接收介质响应
function vve:object/_clear_receiver

# 相对坐标组成部分
execute store result score sstemp_kx int store result score sstemp_ky int \
	store result score sstemp_kz int store result score sstemp_jx int \
	store result score sstemp_jy int store result score sstemp_jz int \
	store result score sstemp_ix int store result score sstemp_iy int \
	run scoreboard players operation sstemp_iz int = a int
scoreboard players operation sstemp_ix int *= ivec_x int
scoreboard players operation sstemp_iy int *= ivec_y int
scoreboard players operation sstemp_iz int *= ivec_z int
scoreboard players operation sstemp_jx int *= jvec_x int
scoreboard players operation sstemp_jy int *= jvec_y int
scoreboard players operation sstemp_jz int *= jvec_z int
scoreboard players operation sstemp_kx int *= kvec_x int
scoreboard players operation sstemp_ky int *= kvec_y int
scoreboard players operation sstemp_kz int *= kvec_z int
execute store result score sstemp_rx int run scoreboard players operation sstemp_ix int /= 10000 int
execute store result score sstemp_ry int run scoreboard players operation sstemp_iy int /= 10000 int
execute store result score sstemp_rz int run scoreboard players operation sstemp_iz int /= 10000 int
execute store result score sstemp_sx int run scoreboard players operation sstemp_jx int /= 10000 int
execute store result score sstemp_sy int run scoreboard players operation sstemp_jy int /= 10000 int
execute store result score sstemp_sz int run scoreboard players operation sstemp_jz int /= 10000 int
execute store result score sstemp_tx int run scoreboard players operation sstemp_kx int /= 10000 int
execute store result score sstemp_ty int run scoreboard players operation sstemp_ky int /= 10000 int
execute store result score sstemp_tz int run scoreboard players operation sstemp_kz int /= 10000 int

scoreboard players operation sstemp_ax int = angular_x int
scoreboard players operation sstemp_ay int = angular_y int
scoreboard players operation sstemp_az int = angular_z int
scoreboard players operation sstemp_ax int /= 100 int
scoreboard players operation sstemp_ay int /= 100 int
scoreboard players operation sstemp_az int /= 100 int

# 线速度组成部分
scoreboard players operation sstempx int = sstemp_rx int
scoreboard players operation sstemp_rx int = sstemp_ay int
scoreboard players operation sstemp_rx int *= sstemp_rz int
scoreboard players operation sstemp0 int = sstemp_ry int
scoreboard players operation sstemp0 int *= sstemp_az int
scoreboard players operation sstemp_rx int -= sstemp0 int
scoreboard players operation sstemp_rx int /= 10000 int
scoreboard players operation sstempy int = sstemp_ry int
scoreboard players operation sstemp_ry int = sstemp_az int
scoreboard players operation sstemp_ry int *= sstemp_rx int
scoreboard players operation sstemp0 int = sstemp_rz int
scoreboard players operation sstemp0 int *= sstemp_ax int
scoreboard players operation sstemp_ry int -= sstemp0 int
scoreboard players operation sstemp_ry int /= 10000 int
scoreboard players operation sstemp_rz int = sstempy int
scoreboard players operation sstemp_rz int *= sstemp_ax int
scoreboard players operation sstemp0 int = sstemp_ay int
scoreboard players operation sstemp0 int *= sstempx int
scoreboard players operation sstemp_rz int -= sstemp0 int
scoreboard players operation sstemp_rz int /= 10000 int

scoreboard players operation sstempx int = sstemp_sx int
scoreboard players operation sstemp_sx int = sstemp_ay int
scoreboard players operation sstemp_sx int *= sstemp_sz int
scoreboard players operation sstemp0 int = sstemp_sy int
scoreboard players operation sstemp0 int *= sstemp_az int
scoreboard players operation sstemp_sx int -= sstemp0 int
scoreboard players operation sstemp_sx int /= 10000 int
scoreboard players operation sstempy int = sstemp_sy int
scoreboard players operation sstemp_sy int = sstemp_az int
scoreboard players operation sstemp_sy int *= sstemp_sx int
scoreboard players operation sstemp0 int = sstemp_sz int
scoreboard players operation sstemp0 int *= sstemp_ax int
scoreboard players operation sstemp_sy int -= sstemp0 int
scoreboard players operation sstemp_sy int /= 10000 int
scoreboard players operation sstemp_sz int = sstempy int
scoreboard players operation sstemp_sz int *= sstemp_ax int
scoreboard players operation sstemp0 int = sstemp_ay int
scoreboard players operation sstemp0 int *= sstempx int
scoreboard players operation sstemp_sz int -= sstemp0 int
scoreboard players operation sstemp_sz int /= 10000 int

scoreboard players operation sstempx int = sstemp_tx int
scoreboard players operation sstemp_tx int = sstemp_ay int
scoreboard players operation sstemp_tx int *= sstemp_tz int
scoreboard players operation sstemp0 int = sstemp_ty int
scoreboard players operation sstemp0 int *= sstemp_az int
scoreboard players operation sstemp_tx int -= sstemp0 int
scoreboard players operation sstemp_tx int /= 10000 int
scoreboard players operation sstempy int = sstemp_ty int
scoreboard players operation sstemp_ty int = sstemp_az int
scoreboard players operation sstemp_ty int *= sstemp_tx int
scoreboard players operation sstemp0 int = sstemp_tz int
scoreboard players operation sstemp0 int *= sstemp_ax int
scoreboard players operation sstemp_ty int -= sstemp0 int
scoreboard players operation sstemp_ty int /= 10000 int
scoreboard players operation sstemp_tz int = sstempy int
scoreboard players operation sstemp_tz int *= sstemp_ax int
scoreboard players operation sstemp0 int = sstemp_ay int
scoreboard players operation sstemp0 int *= sstempx int
scoreboard players operation sstemp_tz int -= sstemp0 int
scoreboard players operation sstemp_tz int /= 10000 int

#tellraw @a ["sstemp_r: ",{"score":{"name":"sstemp_rx","objective":"int"}},", ",{"score":{"name":"sstemp_ry","objective":"int"}},", ",{"score":{"name":"sstemp_rz","objective":"int"}}]
#tellraw @a ["sstemp_s: ",{"score":{"name":"sstemp_sx","objective":"int"}},", ",{"score":{"name":"sstemp_sy","objective":"int"}},", ",{"score":{"name":"sstemp_sz","objective":"int"}}]
#tellraw @a ["sstemp_t: ",{"score":{"name":"sstemp_tx","objective":"int"}},", ",{"score":{"name":"sstemp_ty","objective":"int"}},", ",{"score":{"name":"sstemp_tz","objective":"int"}}]

# 设置cpoint质量
scoreboard players operation c_mass int = mass int
scoreboard players add c_mass int 7
scoreboard players operation c_mass int /= 8 int

# 顶点1介质探测
scoreboard players operation c_x int = sstemp_ix int
scoreboard players operation c_y int = sstemp_iy int
scoreboard players operation c_z int = sstemp_iz int
scoreboard players operation c_x int += sstemp_jx int
scoreboard players operation c_y int += sstemp_jy int
scoreboard players operation c_z int += sstemp_jz int
scoreboard players operation c_x int += sstemp_kx int
scoreboard players operation c_y int += sstemp_ky int
scoreboard players operation c_z int += sstemp_kz int
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation c_x int += x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation c_y int += y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation c_z int += z int
scoreboard players operation c_vx int = sstemp_rx int
scoreboard players operation c_vy int = sstemp_ry int
scoreboard players operation c_vz int = sstemp_rz int
scoreboard players operation c_vx int += sstemp_sx int
scoreboard players operation c_vy int += sstemp_sy int
scoreboard players operation c_vz int += sstemp_sz int
scoreboard players operation c_vx int += sstemp_tx int
scoreboard players operation c_vy int += sstemp_ty int
scoreboard players operation c_vz int += sstemp_tz int
scoreboard players operation c_vx int += vx int
scoreboard players operation c_vy int += vy int
scoreboard players operation c_vz int += vz int
data modify entity @s Pos set from storage math:io xyz
execute at @s run function vve:_detect_material
scoreboard players operation grab_layer_receiver_response int += grab_layer_response int
scoreboard players operation friction_receiver_response int < friction_response int
execute if score shift_response int matches 1 run function vve:object/_receive_shift
execute if score impulse_response int matches 1 run function vve:object/_receive_impulse

# 偏移距离乘2
scoreboard players operation sstemp_ix int *= 2 int
scoreboard players operation sstemp_iy int *= 2 int
scoreboard players operation sstemp_iz int *= 2 int
scoreboard players operation sstemp_jx int *= 2 int
scoreboard players operation sstemp_jy int *= 2 int
scoreboard players operation sstemp_jz int *= 2 int
scoreboard players operation sstemp_kx int *= 2 int
scoreboard players operation sstemp_ky int *= 2 int
scoreboard players operation sstemp_kz int *= 2 int
scoreboard players operation sstemp_rx int *= 2 int
scoreboard players operation sstemp_ry int *= 2 int
scoreboard players operation sstemp_rz int *= 2 int
scoreboard players operation sstemp_sx int *= 2 int
scoreboard players operation sstemp_sy int *= 2 int
scoreboard players operation sstemp_sz int *= 2 int
scoreboard players operation sstemp_tx int *= 2 int
scoreboard players operation sstemp_ty int *= 2 int
scoreboard players operation sstemp_tz int *= 2 int

# 顶点2介质探测
scoreboard players operation c_vx int -= sstemp_tx int
scoreboard players operation c_vy int -= sstemp_ty int
scoreboard players operation c_vz int -= sstemp_tz int
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation c_x int -= sstemp_kx int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation c_y int -= sstemp_ky int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation c_z int -= sstemp_kz int
data modify entity @s Pos set from storage math:io xyz
execute at @s run function vve:_detect_material
scoreboard players operation grab_layer_receiver_response int += grab_layer_response int
scoreboard players operation friction_receiver_response int < friction_response int
execute if score shift_response int matches 1 run function vve:object/_receive_shift
execute if score impulse_response int matches 1 run function vve:object/_receive_impulse

# 顶点3介质探测
scoreboard players operation c_vx int -= sstemp_rx int
scoreboard players operation c_vy int -= sstemp_ry int
scoreboard players operation c_vz int -= sstemp_rz int
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation c_x int -= sstemp_ix int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation c_y int -= sstemp_iy int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation c_z int -= sstemp_iz int
data modify entity @s Pos set from storage math:io xyz
execute at @s run function vve:_detect_material
scoreboard players operation grab_layer_receiver_response int += grab_layer_response int
scoreboard players operation friction_receiver_response int < friction_response int
execute if score shift_response int matches 1 run function vve:object/_receive_shift
execute if score impulse_response int matches 1 run function vve:object/_receive_impulse

# 顶点4介质探测
scoreboard players operation c_vx int += sstemp_tx int
scoreboard players operation c_vy int += sstemp_ty int
scoreboard players operation c_vz int += sstemp_tz int
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation c_x int += sstemp_kx int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation c_y int += sstemp_ky int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation c_z int += sstemp_kz int
data modify entity @s Pos set from storage math:io xyz
execute at @s run function vve:_detect_material
scoreboard players operation grab_layer_receiver_response int += grab_layer_response int
scoreboard players operation friction_receiver_response int < friction_response int
execute if score shift_response int matches 1 run function vve:object/_receive_shift
execute if score impulse_response int matches 1 run function vve:object/_receive_impulse

# 顶点5介质探测
scoreboard players operation c_vx int -= sstemp_sx int
scoreboard players operation c_vy int -= sstemp_sy int
scoreboard players operation c_vz int -= sstemp_sz int
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation c_x int -= sstemp_jx int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation c_y int -= sstemp_jy int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation c_z int -= sstemp_jz int
data modify entity @s Pos set from storage math:io xyz
execute at @s run function vve:_detect_material
scoreboard players operation grab_layer_receiver_response int += grab_layer_response int
scoreboard players operation friction_receiver_response int < friction_response int
execute if score shift_response int matches 1 run function vve:object/_receive_shift
execute if score impulse_response int matches 1 run function vve:object/_receive_impulse

# 顶点6介质探测
scoreboard players operation c_vx int -= sstemp_tx int
scoreboard players operation c_vy int -= sstemp_ty int
scoreboard players operation c_vz int -= sstemp_tz int
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation c_x int -= sstemp_kx int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation c_y int -= sstemp_ky int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation c_z int -= sstemp_kz int
data modify entity @s Pos set from storage math:io xyz
execute at @s run function vve:_detect_material
scoreboard players operation grab_layer_receiver_response int += grab_layer_response int
scoreboard players operation friction_receiver_response int < friction_response int
execute if score shift_response int matches 1 run function vve:object/_receive_shift
execute if score impulse_response int matches 1 run function vve:object/_receive_impulse

# 顶点7介质探测
scoreboard players operation c_vx int += sstemp_rx int
scoreboard players operation c_vy int += sstemp_ry int
scoreboard players operation c_vz int += sstemp_rz int
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation c_x int += sstemp_ix int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation c_y int += sstemp_iy int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation c_z int += sstemp_iz int
data modify entity @s Pos set from storage math:io xyz
execute at @s run function vve:_detect_material
scoreboard players operation grab_layer_receiver_response int += grab_layer_response int
scoreboard players operation friction_receiver_response int < friction_response int
execute if score shift_response int matches 1 run function vve:object/_receive_shift
execute if score impulse_response int matches 1 run function vve:object/_receive_impulse

# 顶点8介质探测
scoreboard players operation c_vx int += sstemp_tx int
scoreboard players operation c_vy int += sstemp_ty int
scoreboard players operation c_vz int += sstemp_tz int
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation c_x int += sstemp_kx int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation c_y int += sstemp_ky int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation c_z int += sstemp_kz int
data modify entity @s Pos set from storage math:io xyz
execute at @s run function vve:_detect_material
scoreboard players operation grab_layer_receiver_response int += grab_layer_response int
scoreboard players operation friction_receiver_response int < friction_response int
execute if score shift_response int matches 1 run function vve:object/_receive_shift
execute if score impulse_response int matches 1 run function vve:object/_receive_impulse

# 结束接受介质响应
function vve:object/_receive_over

# 区块安全
tp @s 0 0 0