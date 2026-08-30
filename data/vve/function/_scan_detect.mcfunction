#vve:_scan_detect
# 扫描进行介质探测
# 输入执行坐标
# 输入执行者坐标
# 输入macro {detect_func:""}
# 传入世界实体为执行者

data modify storage math:io xyz set from entity @s Pos
execute store result score x int run data get storage math:io xyz[0] 10000
execute store result score y int run data get storage math:io xyz[1] 10000
execute store result score z int run data get storage math:io xyz[2] 10000
tp @s ~ ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score line_dx int run data get storage math:io xyz[0] 10000
execute store result score line_dy int run data get storage math:io xyz[1] 10000
execute store result score line_dz int run data get storage math:io xyz[2] 10000
scoreboard players operation line_dx int -= x int
scoreboard players operation line_dy int -= y int
scoreboard players operation line_dz int -= z int

$data modify storage math:io render_command set value 'function vve:scan_detect_here {detect_func:"$(detect_func)"}'
scoreboard players set render_density int 100
function math:line/_render_start
#data modify storage math:io render_progress.rate set value 1

function math:line/_model

tag @e[tag=result] remove result
summon marker 0 0 0 {Tags:["vve_scan_detect","result"],CustomName:"vve_scan_detect"}
execute as @e[tag=result,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.plate set from storage math:io result
data modify storage marker_control:io result.render_progress set from storage math:io render_progress
data modify storage marker_control:io result.tick_func set value "vve:scan_detect_main"
execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked

# 坐标安全
tp @s 0 0 0