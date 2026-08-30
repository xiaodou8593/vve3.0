#vve:slope_xp/test/build

# -6360000 860000 -900000
scoreboard players set x int -6360000
scoreboard players set y int 860000
scoreboard players set z int -900000
scoreboard players set w int 160000
scoreboard players set l int 320000
scoreboard players set h int 120000
scoreboard players set base_layer int 10000
function vve:slope_xp/_calc_chunk_range
execute as 0-0-0-0-0 run function vve:slope_xp/_calc_nvec
function vve:slope_xp/_model
data modify storage vve:io input set from storage vve:io result
function vve:slope_xp/_new
execute as @e[tag=result,limit=1] run function vve:slope_xp/_get
function vve:slope_xp/_update_display
item replace entity @e[tag=result,limit=1] container.0 with glass

scoreboard players set x int -6040000
scoreboard players set y int 980000
scoreboard players set z int -900000
scoreboard players set w int 160000
scoreboard players set l int 320000
scoreboard players set h int 60000
scoreboard players set base_layer int 10000
function vve:slope_xp/_calc_chunk_range
execute as 0-0-0-0-0 run function vve:slope_xp/_calc_nvec
function vve:slope_xp/_model
data modify storage vve:io input set from storage vve:io result
function vve:slope_xp/_new
execute as @e[tag=result,limit=1] run function vve:slope_xp/_get
function vve:slope_xp/_update_display
item replace entity @e[tag=result,limit=1] container.0 with glass

scoreboard players set x int -5720000
scoreboard players set y int 1040000
scoreboard players set z int -900000
scoreboard players set w int 160000
scoreboard players set l int 320000
scoreboard players set h int 0
scoreboard players set base_layer int 10000
function vve:slope_xp/_calc_chunk_range
execute as 0-0-0-0-0 run function vve:slope_xp/_calc_nvec
function vve:slope_xp/_model
data modify storage vve:io input set from storage vve:io result
function vve:slope_xp/_new
execute as @e[tag=result,limit=1] run function vve:slope_xp/_get
function vve:slope_xp/_update_display
item replace entity @e[tag=result,limit=1] container.0 with glass

scoreboard players set x int -4920000
scoreboard players set y int 860000
scoreboard players set z int -900000
scoreboard players set w int 160000
scoreboard players set l int 480000
scoreboard players set h int 180000
scoreboard players set base_layer int 10000
function vve:slope_xn/_calc_chunk_range
execute as 0-0-0-0-0 run function vve:slope_xn/_calc_nvec
function vve:slope_xn/_model
data modify storage vve:io input set from storage vve:io result
function vve:slope_xn/_new
execute as @e[tag=result,limit=1] run function vve:slope_xn/_get
function vve:slope_xn/_update_display
item replace entity @e[tag=result,limit=1] container.0 with glass