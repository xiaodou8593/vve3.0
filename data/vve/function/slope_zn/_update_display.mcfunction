#vve:slope_zn/_update_display
# 更新展示设置
# 输出entity @e[tag=result,limit=1]

function vve:slope_zn/_push
scoreboard players operation stemp_d int = w int
scoreboard players operation stemp_d int /= 2 int
scoreboard players operation x int += stemp_d int
scoreboard players operation stemp_d int = h int
scoreboard players operation stemp_d int /= 2 int
scoreboard players operation y int += stemp_d int
scoreboard players operation stemp_d int = l int
scoreboard players operation stemp_d int /= 2 int
scoreboard players operation z int -= stemp_d int
scoreboard players set theta int 1800000
function vve:slope_display/_model
data modify storage vve:io input set from storage vve:io result
function vve:slope_display/_new
function vve:slope_zn/_pop