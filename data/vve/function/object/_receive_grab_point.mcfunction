#vve:object/_receive_grab_point
# 接收附着点
# 迭代receiver{...}

execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get c_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get c_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get c_z int
data modify storage vve:io list_grab_points append from storage math:io xyz