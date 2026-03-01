#vve:test/point/_receive_impulse
# 接收冲量响应
# 输入impulse{...}

scoreboard players operation vx int += impulse_fx int
scoreboard players operation vy int += impulse_fy int
scoreboard players operation vz int += impulse_fz int