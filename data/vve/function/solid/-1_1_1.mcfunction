#vve:solid/-1_1_1
# vve:solid/search调用

scoreboard players operation stemp_y int *= -1 int
scoreboard players add stemp_y int 10000

scoreboard players operation stemp_z int *= -1 int
scoreboard players add stemp_z int 10000

scoreboard players operation stemp_depth_xy int = stemp_x int
scoreboard players operation stemp_depth_xy int > stemp_y int

scoreboard players operation stemp_depth_xz int = stemp_x int
scoreboard players operation stemp_depth_xz int > stemp_z int

scoreboard players operation stemp_depth_yz int = stemp_y int
scoreboard players operation stemp_depth_yz int > stemp_z int

scoreboard players set grab_layer_response int 1

scoreboard players operation grab_depth int = stemp_depth_xy int
scoreboard players operation grab_depth int < stemp_depth_xz int
scoreboard players operation grab_depth int < stemp_depth_yz int
scoreboard players operation stemp_depth int = grab_depth int
scoreboard players operation grab_depth int *= 577 int
scoreboard players operation grab_depth int /= 408 int

scoreboard players set nvec_y int 7071
scoreboard players set nvec_z int 7071

execute if score stemp_depth_yz int = stemp_depth int run return run scoreboard players set nvec_x int 0
scoreboard players set nvec_x int -7071
execute if score stemp_depth_xy int = stemp_depth int run return run scoreboard players set nvec_z int 0
execute if score stemp_depth_xz int = stemp_depth int run return run scoreboard players set nvec_y int 0