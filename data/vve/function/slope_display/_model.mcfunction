#vve:slope_display/_model
# 使用临时对象构建数据模板
# 输出数据模板storage vve:io result

data modify storage vve:io result set value {center:[0.0d, 0.0d, 0.0d], size:[0.0d, 0.0d, 0.0d], theta:0}

execute store result storage vve:io result.center[0] double 0.0001 run scoreboard players get x int
execute store result storage vve:io result.center[1] double 0.0001 run scoreboard players get y int
execute store result storage vve:io result.center[2] double 0.0001 run scoreboard players get z int
execute store result storage vve:io result.size[0] double 0.0001 run scoreboard players get w int
execute store result storage vve:io result.size[1] double 0.0001 run scoreboard players get l int
execute store result storage vve:io result.size[2] double 0.0001 run scoreboard players get h int
execute store result storage vve:io result.theta double 0.0001 run scoreboard players get theta int