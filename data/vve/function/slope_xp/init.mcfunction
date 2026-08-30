#vve:slope_xp/init
# 初始化slope_xp模块

# 初始化模块控制
scoreboard objectives add int dummy
execute unless score module_control_inited int matches 1 run function module_control:_init

# 注册本模块
data modify storage module_control:io input set value {prefix:"vve:slope_xp/",namespace:"vve"}
function module_control:data/_reg
scoreboard players operation #vve:slope_xp/ module_id = res int

scoreboard objectives add chunk_x_min dummy
scoreboard objectives add chunk_z_min dummy
scoreboard objectives add chunk_x_max dummy
scoreboard objectives add chunk_z_max dummy
scoreboard objectives add w dummy
scoreboard objectives add l dummy
scoreboard objectives add h dummy
scoreboard objectives add base_layer dummy
scoreboard objectives add nvec_x dummy
scoreboard objectives add nvec_y dummy
scoreboard objectives add nvec_z dummy

function vve:slope_xp/_consts

function vve:slope_xp/_class