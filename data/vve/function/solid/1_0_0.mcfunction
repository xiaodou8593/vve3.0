#vve:solid/1_0_0
# vve:solid/search调用

scoreboard players set grab_layer_response int 1
scoreboard players set nvec_x int 0

scoreboard players set nvec_z int 10000
execute if score stemp_z int matches ..4999 run scoreboard players set nvec_z int -10000
scoreboard players operation grab_depth int = stemp_z int
execute if score stemp_z int matches 5000.. run scoreboard players operation grab_depth int *= -1 int
execute if score stemp_z int matches 5000.. run scoreboard players add grab_depth int 10000

scoreboard players set nvec_y int 10000
execute if score stemp_y int matches ..4999 run scoreboard players set nvec_y int -10000
scoreboard players operation stemp_depth int = stemp_y int
execute if score stemp_y int matches 5000.. run scoreboard players operation stemp_depth int *= -1 int
execute if score stemp_y int matches 5000.. run scoreboard players add stemp_depth int 10000

scoreboard players operation grab_depth int < stemp_depth int
execute if score stemp_depth int = grab_depth int run return run scoreboard players set nvec_z int 0
scoreboard players set nvec_y int 0