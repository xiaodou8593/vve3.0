#vve:grab_layer/_print
# 打印临时对象数据

tellraw @a ["_this: ", "{"]
tellraw @a ["    ", "grab_depth: ", {"score":{"name":"grab_depth", "objective":"int"}}, ","]
tellraw @a ["    ", "norm_vec: ", "[", {"score":{"name":"nvec_x", "objective":"int"}}, ", " ,{"score":{"name":"nvec_y", "objective":"int"}}, ", " ,{"score":{"name":"nvec_z", "objective":"int"}}, "]"]
tellraw @a "}"