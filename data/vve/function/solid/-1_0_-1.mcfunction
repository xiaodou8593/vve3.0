#vve:solid/-1_0_-1
# vve:solid/search调用

scoreboard players set grab_layer_response int 1
scoreboard players operation grab_depth int = stemp_y int
scoreboard players set nvec_x int 0
scoreboard players set nvec_z int 0
execute if score stemp_y int matches ..4999 run return run scoreboard players set nvec_y int -10000
scoreboard players set nvec_y int 10000
scoreboard players operation grab_depth int *= -1 int
scoreboard players add grab_depth int 10000