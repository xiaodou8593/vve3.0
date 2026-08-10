#vve:spin/_print
# 打印临时对象数据

tellraw @a ["vve_spin: ", "{"]
tellraw @a ["    ", "spin_point: ", "[", {"score":{"name":"spin_x", "objective":"int"}}, ", " ,{"score":{"name":"spin_y", "objective":"int"}}, ", " ,{"score":{"name":"spin_z", "objective":"int"}}, "]", ","]
tellraw @a ["    ", "couple: ", "[", {"score":{"name":"couple_x", "objective":"int"}}, ", " ,{"score":{"name":"couple_y", "objective":"int"}}, ", " ,{"score":{"name":"couple_z", "objective":"int"}}, "]"]
tellraw @a "}"