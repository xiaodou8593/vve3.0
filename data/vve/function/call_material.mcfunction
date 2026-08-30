#vve:call_material
# vve:_detect_material调用
# 所有_detect_*函数调用

execute if score @s vve_material_type matches 1 run return run function vve:cube/check_material
execute if score @s vve_material_type matches 2 run return run function vve:cublock/check_material

function module_control:_call_method {path:"check_material"}