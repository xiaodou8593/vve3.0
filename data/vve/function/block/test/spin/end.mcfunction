#vve:block/test/spin/end

execute as @e[tag=math_marker,limit=1] run function vve:test_coord/_topos
execute at @e[tag=math_marker,limit=1] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 air

function vve:block/_del