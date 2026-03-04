#vve:cpoint/_print
# 打印临时对象数据

tellraw @a ["cpoint: ", "{"]
tellraw @a ["    ", "center: ", "[", {"score":{"name":"c_x", "objective":"int"}}, ", " ,{"score":{"name":"c_y", "objective":"int"}}, ", " ,{"score":{"name":"c_z", "objective":"int"}}, "]", ","]
tellraw @a ["    ", "velocity: ", "[", {"score":{"name":"c_vx", "objective":"int"}}, ", " ,{"score":{"name":"c_vy", "objective":"int"}}, ", " ,{"score":{"name":"c_vz", "objective":"int"}}, "]", ","]
tellraw @a ["    ", "mass: ", {"score":{"name":"c_mass", "objective":"int"}}]
tellraw @a "}"