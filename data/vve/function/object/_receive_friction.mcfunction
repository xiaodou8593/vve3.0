#vve:object/_receive_friction
# 接收摩擦响应
# 输入<friction_response,int,1w>

# 速度缩放
scoreboard players operation vx int *= friction_response int
scoreboard players operation vy int *= friction_response int
scoreboard players operation vz int *= friction_response int
execute if score vx int matches ..-1 run scoreboard players add vx int 9999
execute if score vy int matches ..-1 run scoreboard players add vy int 9999
execute if score vz int matches ..-1 run scoreboard players add vz int 9999
scoreboard players operation vx int /= 10000 int
scoreboard players operation vy int /= 10000 int
scoreboard players operation vz int /= 10000 int

# 角速度缩放
scoreboard players operation angular_len int *= friction_response int
scoreboard players operation angular_len int /= 10000 int

# 角速度分量缩放
scoreboard players operation angular_x int *= friction_response int
scoreboard players operation angular_y int *= friction_response int
scoreboard players operation angular_z int *= friction_response int
execute if score angular_x int matches ..-1 run scoreboard players add angular_x int 9999
execute if score angular_y int matches ..-1 run scoreboard players add angular_y int 9999
execute if score angular_z int matches ..-1 run scoreboard players add angular_z int 9999
scoreboard players operation angular_x int /= 10000 int
scoreboard players operation angular_y int /= 10000 int
scoreboard players operation angular_z int /= 10000 int