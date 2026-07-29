# Input: set angle int to the target angle in degrees before calling this function.
scoreboard players operation stemp int = angle int
scoreboard players operation stemp int %= 360 int
execute if score stemp int matches ..-1 run scoreboard players add stemp int 360
scoreboard players operation stemp int *= 255 int
scoreboard players add stemp int 180
scoreboard players operation stemp int /= 360 int
scoreboard players operation stemp int %= 256 int
scoreboard players operation color int = roll_high_marker_base int
scoreboard players operation color int += stemp int
execute store result storage vve:shader color int 1 run scoreboard players get color int
function vve:shader/roll_instant with storage vve:shader

scoreboard players operation color int = fakefov_instant_base int
execute store result storage vve:shader color int 1 run scoreboard players get color int
function vve:shader/roll_instant with storage vve:shader