#vve:object/_scale_angular
# 按倍率缩放临时对象角速度
# 输入<inp,int,1w>
# 输入_this:{<angular_x,int,1w>,<angular_y,int,1w>,<angular_z,int,1w>,<angular_len,int,1w>}
# 输出_this:{<angular_x,int,1w>,<angular_y,int,1w>,<angular_z,int,1w>,<angular_len,int,1w>}

# 角速度缩放
scoreboard players operation stemp_mod int = angular_len int
scoreboard players operation angular_len int /= 10000 int
scoreboard players operation angular_len int *= inp int
scoreboard players operation stemp_mod int %= 10000 int
scoreboard players operation stemp_mod int *= inp int
scoreboard players operation stemp_mod int /= 10000 int
scoreboard players operation angular_len int += stemp_mod int

# 角速度分量缩放
scoreboard players operation stemp_x int = angular_x int
scoreboard players operation stemp_y int = angular_y int
scoreboard players operation stemp_z int = angular_z int
scoreboard players operation stemp_x int /= 10000 int
scoreboard players operation stemp_y int /= 10000 int
scoreboard players operation stemp_z int /= 10000 int
scoreboard players operation stemp_x int *= inp int
scoreboard players operation stemp_y int *= inp int
scoreboard players operation stemp_z int *= inp int
scoreboard players operation angular_x int %= 10000 int
scoreboard players operation angular_y int %= 10000 int
scoreboard players operation angular_z int %= 10000 int
scoreboard players operation angular_x int *= inp int
scoreboard players operation angular_y int *= inp int
scoreboard players operation angular_z int *= inp int
execute if score stemp_x int matches ..-1 run scoreboard players add angular_x int 9999
execute if score stemp_y int matches ..-1 run scoreboard players add angular_y int 9999
execute if score stemp_z int matches ..-1 run scoreboard players add angular_z int 9999
scoreboard players operation angular_x int /= 10000 int
scoreboard players operation angular_y int /= 10000 int
scoreboard players operation angular_z int /= 10000 int
scoreboard players operation angular_x int += stemp_x int
scoreboard players operation angular_y int += stemp_y int
scoreboard players operation angular_z int += stemp_z int