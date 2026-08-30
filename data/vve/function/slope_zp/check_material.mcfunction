#vve:slope_zp/check_material

scoreboard players operation stemp_x int = c_x int
scoreboard players operation stemp_y int = c_y int
scoreboard players operation stemp_z int = c_z int
scoreboard players operation stemp_x int -= @s x
scoreboard players operation stemp_y int -= @s y
scoreboard players operation stemp_z int -= @s z

scoreboard players set res int 0
execute if score stemp_x int matches 0.. if score stemp_x int <= @s w \
	if score stemp_z int matches 0.. if score stemp_z int <= @s l \
	run scoreboard players set res int 1

scoreboard players operation stemp_depth int = @s h
scoreboard players operation stemp_a int = @s l
scoreboard players operation stemp_a int /= 100 int
scoreboard players operation stemp_depth int *= 100 int
scoreboard players operation stemp_depth int /= stemp_a int
execute store result score stemp_b int run scoreboard players operation stemp_a int = stemp_z int
scoreboard players operation stemp_a int /= 10000 int
scoreboard players operation stemp_b int %= 10000 int
scoreboard players operation stemp_b int *= stemp_depth int
scoreboard players operation stemp_b int /= 10000 int
scoreboard players operation stemp_depth int *= stemp_a int
scoreboard players operation stemp_depth int += stemp_b int

scoreboard players operation stemp_depth int -= stemp_y int

execute if score stemp_depth int < vve_slope_block_d int run scoreboard players set res int 0
execute if score stemp_depth int > @s base_layer run scoreboard players set res int 0

execute if score res int matches 1 run function vve:slope_xp/response