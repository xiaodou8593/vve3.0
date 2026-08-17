#vve:block/test/spin/main

execute unless score test int matches -1 run return fail
scoreboard players set @s killtime 10

#tellraw @a "---"
#tellraw @a ["test_n: ", {"score":{"name":"test_n","objective":"int"}}]

#function vve:block/_get
#function vve:block/_model
#execute store result storage vve:io frame int 1 run scoreboard players get test_n int
#function vve:block/test/spin/store_frame with storage vve:io {}

function vve:block/main_c

scoreboard players operation u int = a int
scoreboard players operation v int = a int
scoreboard players operation v int *= -1 int
scoreboard players set w int 0
function math:uvw/_tovec
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get vec_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get vec_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get vec_z int
data modify entity 0-0-0-0-0 Pos set from storage math:io xyz
data modify storage math:io render_command set value "execute positioned ~ ~0.05 ~ run function math:rgb/_render_debug_2"
execute as 0-0-0-0-0 at @s run function math:_render
scoreboard players operation spin_x int = vec_x int
scoreboard players operation spin_y int = vec_y int
scoreboard players operation spin_z int = vec_z int

scoreboard players operation couple_x int = kvec_x int
scoreboard players operation couple_y int = kvec_y int
scoreboard players operation couple_z int = kvec_z int
scoreboard players operation temp_mod int = test_n int
scoreboard players operation temp_mod int /= 3 int
scoreboard players operation temp_mod int %= 6 int
execute if score temp_mod int matches 6 run scoreboard players operation couple_x int *= -1 int
execute if score temp_mod int matches 6 run scoreboard players operation couple_y int *= -1 int
execute if score temp_mod int matches 6 run scoreboard players operation couple_z int *= -1 int
scoreboard players operation couple_x int /= 10 int
scoreboard players operation couple_y int /= 10 int
scoreboard players operation couple_z int /= 10 int
execute if score test_n int matches 60.. run function vve:object/_apply_spin_as

scoreboard players add test_n int 1