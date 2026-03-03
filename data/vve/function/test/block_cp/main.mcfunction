#vve:test/block_cp/main

execute unless score test int matches -1 run return fail
scoreboard players set @s killtime 10

function vve:block/_get
execute as 0-0-0-0-0 run function vve:object/_iter_motion
execute as 0-0-0-0-0 run function vve:block/_iter_cpoints
function vve:object/_sync_motion
function vve:block/_store