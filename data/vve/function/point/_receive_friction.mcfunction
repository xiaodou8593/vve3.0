#vve:point/_receive_friction
# 接收摩擦响应
# 输入<friction_response,int,1w>

scoreboard players operation vx int *= friction_response int
scoreboard players operation vy int *= friction_response int
scoreboard players operation vz int *= friction_response int
execute if score vx int matches ..-1 run scoreboard players add vx int 9999
execute if score vy int matches ..-1 run scoreboard players add vy int 9999
execute if score vz int matches ..-1 run scoreboard players add vz int 9999
scoreboard players operation vx int /= 10000 int
scoreboard players operation vy int /= 10000 int
scoreboard players operation vz int /= 10000 int