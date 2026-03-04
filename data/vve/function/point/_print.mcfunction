#vve:point/_print
# 打印临时对象数据

tellraw @a ["point: ", "{"]
tellraw @a ["    ", "center: ", "[", {"score":{"name":"x", "objective":"int"}}, ", " ,{"score":{"name":"y", "objective":"int"}}, ", " ,{"score":{"name":"z", "objective":"int"}}, "]", ","]
tellraw @a ["    ", "velocity: ", "[", {"score":{"name":"vx", "objective":"int"}}, ", " ,{"score":{"name":"vy", "objective":"int"}}, ", " ,{"score":{"name":"vz", "objective":"int"}}, "]"]
tellraw @a "}"