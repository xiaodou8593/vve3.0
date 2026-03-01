#vve:impulse/_model
# 使用临时对象构建数据模板
# 输出数据模板storage vve:io result

data modify storage vve:io result set value {center:[0.0d, 0.0d, 0.0d], vector:[0.0d, 0.0d, 0.0d]}

execute store result storage vve:io result.center[0] double 0.0001 run scoreboard players get impulse_x int
execute store result storage vve:io result.center[1] double 0.0001 run scoreboard players get impulse_y int
execute store result storage vve:io result.center[2] double 0.0001 run scoreboard players get impulse_z int
execute store result storage vve:io result.vector[0] double 0.0001 run scoreboard players get impulse_fx int
execute store result storage vve:io result.vector[1] double 0.0001 run scoreboard players get impulse_fy int
execute store result storage vve:io result.vector[2] double 0.0001 run scoreboard players get impulse_fz int