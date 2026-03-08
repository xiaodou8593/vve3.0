#vve:_consts
# 设置运行常量

# 空气摩擦系数
scoreboard players set vve_air_friction int 10000

# 实心介质摩擦系数
scoreboard players set vve_grab_friction int 8500
scoreboard players set vve_solid_friction int 4500

# 附着层深度
scoreboard players set grab_depth_max int 500
# 位移至深度
scoreboard players set grab_depth_mid int 125
# 附着层过滤速度
scoreboard players set grab_layer_v int 1500
# 姿态修正速度
scoreboard players set grab_layer_regular_v int 300

# 重力加速度
scoreboard players set vve_gravity int 300

# 实心介质最大深度
scoreboard players set vve_solid_r int 30000