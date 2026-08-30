#vve:scan_detect_main
# vve:_scan_detect异步调用

function marker_control:data/_get
data modify storage math:io input set from storage marker_control:io result.plate
function math:line/_proj
data modify storage math:io render_progress set from storage marker_control:io result.render_progress
execute as 0-0-0-0-0 run function math:line/_render_async
data modify storage marker_control:io result.render_progress set from storage math:io render_progress
function marker_control:data/_store
execute unless data storage math:io render_progress.exit run return fail
tag @s remove entity_ticked
scoreboard players set @s killtime 1