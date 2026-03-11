#vve:cpoint/test

execute store result storage math:io xyz[0] double 0.0001 run scoreboard players set c_x int 1915177
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players set c_y int -575056
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players set c_z int 501235
data modify entity @e[tag=math_marker,limit=1] Pos set from storage math:io xyz
scoreboard players set c_vx int -18
scoreboard players set c_vy int -5494
scoreboard players set c_vz int 312
scoreboard players set c_mass int 17
execute as @e[tag=math_marker,limit=1] at @s run function vve:_detect_material
function vve:grab_layer/_print