#vve:box_object/_apply_spin
# 施加spin
# 输入vve:spin{...}
# 传入世界实体为执行者

# 更新角速度
function vve:box_object/_apply_couple

scoreboard players operation vec_x int = couple_x int
scoreboard players operation vec_y int = couple_y int
scoreboard players operation vec_z int = couple_z int
scoreboard players operation sstemp_x int = vec_x int
scoreboard players operation sstemp_y int = vec_y int
scoreboard players operation sstemp_z int = vec_z int
scoreboard players operation vec_x int /= inertia int
scoreboard players operation vec_y int /= inertia int
scoreboard players operation vec_z int /= inertia int
scoreboard players operation sstemp_x int %= inertia int
scoreboard players operation sstemp_y int %= inertia int
scoreboard players operation sstemp_z int %= inertia int
scoreboard players operation vec_x int *= 100 int
scoreboard players operation vec_y int *= 100 int
scoreboard players operation vec_z int *= 100 int
scoreboard players operation sstemp_x int *= 100 int
scoreboard players operation sstemp_y int *= 100 int
scoreboard players operation sstemp_z int *= 100 int
scoreboard players operation sstemp_x int /= inertia int
scoreboard players operation sstemp_y int /= inertia int
scoreboard players operation sstemp_z int /= inertia int

# 计算转轴和模长
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation vec_x int += sstemp_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation vec_y int += sstemp_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation vec_z int += sstemp_z int
data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0 ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score uvec_x int run data get storage math:io xyz[0] 10000
execute store result score uvec_y int run data get storage math:io xyz[1] 10000
execute store result score uvec_z int run data get storage math:io xyz[2] 10000

scoreboard players operation theta int = vec_x int
execute if score vec_x int matches ..-1 run scoreboard players operation theta int *= -1 int
execute if score vec_y int matches 1.. run scoreboard players operation theta int += vec_y int
execute if score vec_y int matches ..-1 run scoreboard players operation theta int -= vec_y int
execute if score vec_z int matches 1.. run scoreboard players operation theta int += vec_z int
execute if score vec_z int matches ..-1 run scoreboard players operation theta int -= vec_z int

scoreboard players operation sstempd int = uvec_x int
execute if score uvec_x int matches ..-1 run scoreboard players operation sstempd int *= -1 int
execute if score uvec_y int matches 1.. run scoreboard players operation sstempd int += uvec_y int
execute if score uvec_y int matches ..-1 run scoreboard players operation sstempd int -= uvec_y int
execute if score uvec_z int matches 1.. run scoreboard players operation sstempd int += uvec_z int
execute if score uvec_z int matches ..-1 run scoreboard players operation sstempd int -= uvec_z int

scoreboard players operation sstemp_mod int = theta int
scoreboard players operation theta int /= sstempd int
scoreboard players operation sstemp_mod int %= sstempd int
scoreboard players operation sstemp_mod int *= 10000 int
scoreboard players operation sstemp_mod int /= sstempd int
scoreboard players operation theta int *= 10000 int

scoreboard players operation fvec_x int = spin_x int
scoreboard players operation fvec_y int = spin_y int
scoreboard players operation fvec_z int = spin_z int
scoreboard players operation fvec_x int -= x int
scoreboard players operation fvec_y int -= y int
scoreboard players operation fvec_z int -= z int

function math:uvec/_rot_fvec

scoreboard players operation fvec_x int += x int
scoreboard players operation fvec_y int += y int
scoreboard players operation fvec_z int += z int
scoreboard players operation fvec_x int -= spin_x int
scoreboard players operation fvec_y int -= spin_y int
scoreboard players operation fvec_z int -= spin_z int

# 叠加给速度
scoreboard players operation vx int += fvec_x int
scoreboard players operation vy int += fvec_y int
scoreboard players operation vz int += fvec_z int