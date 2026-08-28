#vve:slope_xp/check_material

scoreboard players operation stemp_x int = c_x int
scoreboard players operation stemp_y int = c_y int
scoreboard players operation stemp_z int = c_z int
scoreboard players operation stemp_x int -= @s x
scoreboard players operation stemp_y int -= @s y
scoreboard players operation stemp_z int -= @s z

scoreboard players set res int 0
execute if score stemp_x int matches 0.. if score stemp_x int <= @s l \
	if score stemp_z int matches 0.. if score stemp_z int <= @s w \
	run scoreboard players set res int 1

execute store result score stemp_mod int run scoreboard players operation stemp_depth int = @s h
execute store result score stemp_b int run scoreboard players operation stemp_a int = stemp_x int
scoreboard players operation stemp_a int /= @s l
scoreboard players operation stemp_b int %= @s l
scoreboard players operation stemp_depth int /= @s l
scoreboard players operation stemp_mod int %= @s l
scoreboard players operation stemp_high int = stemp_a int
scoreboard players operation stemp_high int *= stemp_depth int
scoreboard players operation stemp_high int *= @s l