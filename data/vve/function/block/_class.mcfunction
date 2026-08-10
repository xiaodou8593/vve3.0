#vve:block/_class
# 生成预设静态数据模板

function vve:block/_zero
execute positioned 0.0 0.0 0.0 rotated 0.0 0.0 as 0-0-0-0-0 run function vve:object/_anchor_to
scoreboard players set a int 2500
scoreboard players set mass int 17
scoreboard players set inertia int 500
function vve:block/_model
data modify storage vve:class block_plate set from storage vve:io result