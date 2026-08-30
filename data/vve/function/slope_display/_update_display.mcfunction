#vve:slope_display/_update_display
# 更新展示设置
# 传入slope_display实例为执行者

execute store result storage math:io scale[0] float 0.0001 run scoreboard players get w int
execute store result storage math:io scale[1] float 0.0001 run scoreboard players get 1000 int

# 计算斜边长度
scoreboard players operation dec int = l int
function math:dec/_sqr
scoreboard players operation inp int = dec int
scoreboard players operation dec int = h int
function math:dec/_sqr
scoreboard players operation inp int += dec int
function math:sqrt/_3sqrt
execute store result storage math:io scale[2] float 0.00001 run scoreboard players get res int

# 计算四元数，实例充当世界实体
scoreboard players operation cos int = l int
scoreboard players operation sin int = h int
function math:_atan2_res
scoreboard players operation phi int = res int
scoreboard players operation phi int *= -1 int
function math:quat/_rot_to
execute store result storage math:io xyzw[0] float 0.0001 run scoreboard players get quat_x int
execute store result storage math:io xyzw[1] float 0.0001 run scoreboard players get quat_y int
execute store result storage math:io xyzw[2] float 0.0001 run scoreboard players get quat_z int
execute store result storage math:io xyzw[3] float 0.0001 run scoreboard players get quat_w int
data modify entity @s transformation.scale set from storage math:io scale
data modify entity @s transformation.left_rotation set from storage math:io xyzw

rotate @s 0.0 0.0
# 更新位置
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get z int
data modify entity @s Pos set from storage math:io xyz