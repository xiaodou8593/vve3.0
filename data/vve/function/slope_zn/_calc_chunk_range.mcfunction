#vve:slope_zn/_calc_chunk_range
# 计算区块范围

execute store result score chunk_x_max int run scoreboard players operation chunk_x_min int = x int
execute store result score chunk_z_max int run scoreboard players operation chunk_z_min int = z int
scoreboard players operation chunk_x_max int += w int
scoreboard players operation chunk_z_min int -= l int

scoreboard players operation chunk_x_min int /= 10000 int
scoreboard players operation chunk_x_max int /= 10000 int
scoreboard players operation chunk_z_min int /= 10000 int
scoreboard players operation chunk_z_max int /= 10000 int

scoreboard players operation chunk_x_min int /= 16 int
scoreboard players operation chunk_x_max int /= 16 int
scoreboard players operation chunk_z_min int /= 16 int
scoreboard players operation chunk_z_max int /= 16 int