#vve:solid/-1_-1_0
# vve:solid/search调用

scoreboard players set grab_layer_response int 1
scoreboard players operation grab_depth int = stemp_z int
scoreboard players set nvec_x int 0
scoreboard players set nvec_y int 0
execute if score stemp_z int matches ..4999 run return run scoreboard players set nvec_z int -10000
scoreboard players set nvec_z int 10000
scoreboard players operation grab_depth int *= -1 int
scoreboard players add grab_depth int 10000