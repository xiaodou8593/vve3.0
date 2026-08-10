#vve:spin/_to_iquat
# spin转iquat
# 输出iquat{<iquat_x,int,1w>,<iquat_y,int,1w>,<iquat_z,int,1w>,<iquat_w,int,1w>}
# 需要传入世界实体为执行者

# 计算转轴和模长
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get couple_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get couple_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get couple_z int
data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0 ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score iquat_x int run data get storage math:io xyz[0] 10000
execute store result score iquat_y int run data get storage math:io xyz[1] 10000
execute store result score iquat_z int run data get storage math:io xyz[2] 10000

scoreboard players operation sstemp_len int = couple_x int
execute if score couple_x int matches ..-1 run scoreboard players operation sstemp_len int *= -1 int
execute if score couple_y int matches 1.. run scoreboard players operation sstemp_len int += couple_y int
execute if score couple_y int matches ..-1 run scoreboard players operation sstemp_len int -= couple_y int
execute if score couple_z int matches 1.. run scoreboard players operation sstemp_len int += couple_z int
execute if score couple_z int matches ..-1 run scoreboard players operation sstemp_len int -= couple_z int

scoreboard players operation sstempd int = iquat_x int
execute if score iquat_x int matches ..-1 run scoreboard players operation sstempd int *= -1 int
execute if score iquat_y int matches 1.. run scoreboard players operation sstempd int += iquat_y int
execute if score iquat_y int matches ..-1 run scoreboard players operation sstempd int -= iquat_y int
execute if score iquat_z int matches 1.. run scoreboard players operation sstempd int += iquat_z int
execute if score iquat_z int matches ..-1 run scoreboard players operation sstempd int -= iquat_z int

scoreboard players operation sstemp_mod int = sstemp_len int
scoreboard players operation sstemp_len int /= sstempd int
scoreboard players operation sstemp_mod int %= sstempd int
scoreboard players operation sstemp_mod int *= 10000 int
scoreboard players operation sstemp_mod int /= sstempd int
scoreboard players operation sstemp_len int *= 10000 int
execute store result entity @s Rotation[0] float -0.0057295779513082 run scoreboard players operation sstemp_len int += sstemp_mod int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score iquat_w int run data get storage math:io xyz[2] 10000
execute store result score sin int run data get storage math:io xyz[0] 10000
scoreboard players operation iquat_x int *= sin int
scoreboard players operation iquat_y int *= sin int
scoreboard players operation iquat_z int *= sin int
scoreboard players operation iquat_x int /= 10000 int
scoreboard players operation iquat_y int /= 10000 int
scoreboard players operation iquat_z int /= 10000 int