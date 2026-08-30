#vve:vehicle/_set_roll
# 设置横滚旋转角速度
# 输入大小<inp,int,1w>
# 传入世界实体为执行者

# 剔除原有横滚角速度
scoreboard players operation stemp_x int = angular_x int
scoreboard players operation stemp_y int = angular_y int
scoreboard players operation stemp_z int = angular_z int
scoreboard players operation angular_x int /= 100 int
scoreboard players operation angular_y int /= 100 int
scoreboard players operation angular_z int /= 100 int
scoreboard players operation angular_x int *= kvec_x int
scoreboard players operation angular_y int *= kvec_y int
scoreboard players operation angular_z int *= kvec_z int
scoreboard players operation angular_x int += angular_y int
scoreboard players operation angular_x int += angular_z int
execute store result score angular_y int store result score angular_z int run scoreboard players operation angular_x int /= 10000 int
scoreboard players operation angular_x int *= kvec_x int
scoreboard players operation angular_y int *= kvec_y int
scoreboard players operation angular_z int *= kvec_z int
scoreboard players operation angular_x int /= 100 int
scoreboard players operation angular_y int /= 100 int
scoreboard players operation angular_z int /= 100 int
scoreboard players operation stemp_x int -= angular_x int
scoreboard players operation stemp_y int -= angular_y int
scoreboard players operation stemp_z int -= angular_z int

# 设置横滚角速度
execute store result score angular_y int store result score angular_z int run scoreboard players operation angular_x int = inp int
scoreboard players operation angular_x int *= kvec_x int
scoreboard players operation angular_y int *= kvec_y int
scoreboard players operation angular_z int *= kvec_z int
scoreboard players operation angular_x int /= 100 int
scoreboard players operation angular_y int /= 100 int
scoreboard players operation angular_z int /= 100 int

# 叠加原有角速度
scoreboard players operation angular_x int += stemp_x int
scoreboard players operation angular_y int += stemp_y int
scoreboard players operation angular_z int += stemp_z int

function vve:object/_set_angular