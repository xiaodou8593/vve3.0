#vve:shift/_print
# 打印临时对象数据

tellraw @a ["shift: ", "{"]
tellraw @a ["    ", "vector: ", "[", {"score":{"name":"shift_x", "objective":"int"}}, ", " ,{"score":{"name":"shift_y", "objective":"int"}}, ", " ,{"score":{"name":"shift_z", "objective":"int"}}, "]"]
tellraw @a "}"