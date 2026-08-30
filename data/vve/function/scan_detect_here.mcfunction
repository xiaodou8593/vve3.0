#vve:scan_detect_here
# vve:_scan_detect异步调用

particle minecraft:flame
$execute rotated 0.0 90.0 run function vve:_debug_detect {detect_func:"$(detect_func)"}
execute if score shift_response int matches 0 run return fail
#tellraw @a ["shift_y: ", {"score":{"name":"shift_y","objective":"int"}}]
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation c_x int += shift_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation c_y int += shift_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation c_z int += shift_z int
data modify entity @s Pos set from storage math:io xyz
execute at @s run particle minecraft:soul_fire_flame

#data modify storage math:io render_progress.exit set value 1b