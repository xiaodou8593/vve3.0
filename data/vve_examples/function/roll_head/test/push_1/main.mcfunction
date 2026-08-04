#vve_examples:roll_head/test/push_1/main

execute unless score test int matches -1 run return fail
scoreboard players set @s killtime 10

#tellraw @a "---"
#tellraw @a ["test_n: ", {"score":{"name":"test_n","objective":"int"}}]

#function vve_examples:roll_head/_get
#function vve_examples:roll_head/_model
#execute store result storage vve_examples:io frame int 1 run scoreboard players get test_n int
#function vve_examples:roll_head/test/push_1/store_frame with storage vve_examples:io {}

#execute if score test_n int matches 5 as @p at @s run function vve_examples:roll_head/_spectate_nearest

function vve_examples:roll_head/main_c
#scoreboard players set inp int 1300
#execute if score test_n int matches 60..92 at @s positioned ~ ~2 ~ rotated -90.0 0.0 run function vve_examples:roll_head/_poke_here_i_as
#execute if score test_n int matches 60..92 as 0-0-0-0-0 run function vve:impulse/_render

scoreboard players add test_n int 1