#vve:impulse/_print
# 打印临时对象数据

tellraw @a ["impulse: ", "{"]
tellraw @a ["    ", "center: ", "[", {"score":{"name":"impulse_x", "objective":"int"}}, ", " ,{"score":{"name":"impulse_y", "objective":"int"}}, ", " ,{"score":{"name":"impulse_z", "objective":"int"}}, "]", ","]
tellraw @a ["    ", "vector: ", "[", {"score":{"name":"impulse_fx", "objective":"int"}}, ", " ,{"score":{"name":"impulse_fy", "objective":"int"}}, ", " ,{"score":{"name":"impulse_fz", "objective":"int"}}, "]"]
tellraw @a "}"