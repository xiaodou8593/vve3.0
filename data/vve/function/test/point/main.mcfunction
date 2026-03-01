#vve:test/point/main

function vve:point/_get
function vve:point/_iter_motion
function vve:point/_get_cpoint
scoreboard players set c_mass int 1
execute as 0-0-0-0-0 run function vve:cpoint/_topos
execute as 0-0-0-0-0 at @s run function vve:_detect_material
#execute if score test_n int matches 0.. run tellraw @a ["test_n: ",{"score":{"name":"test_n","objective":"int"}}]
execute if score grab_layer_response int matches 1 run scoreboard players set test_n int -2147483648
execute if score shift_response int matches 1 run function vve:test/point/_receive_shift
execute if score impulse_response int matches 1 run function vve:test/point/_receive_impulse
scoreboard players operation vy int -= vve_gravity int
function vve:point/_receive_friction
function vve:point/_sync_motion
function vve:point/_store

scoreboard players add test_n int 1