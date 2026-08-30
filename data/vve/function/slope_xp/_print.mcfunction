#vve:slope_xp/_print
# 打印临时对象数据

tellraw @a ["_this: ", "{"]
tellraw @a ["    ", "coord: ", "[", {"score":{"name":"x", "objective":"int"}}, ", " ,{"score":{"name":"y", "objective":"int"}}, ", " ,{"score":{"name":"z", "objective":"int"}}, "]", ","]
tellraw @a ["    ", "chunk_range: ", "[", {"score":{"name":"chunk_x_min", "objective":"int"}}, ", " ,{"score":{"name":"chunk_z_min", "objective":"int"}}, ", " ,{"score":{"name":"chunk_x_max", "objective":"int"}}, ", " ,{"score":{"name":"chunk_z_max", "objective":"int"}}, "]", ","]
tellraw @a ["    ", "size: ", "[", {"score":{"name":"w", "objective":"int"}}, ", " ,{"score":{"name":"l", "objective":"int"}}, ", " ,{"score":{"name":"h", "objective":"int"}}, "]", ","]
tellraw @a ["    ", "base_layer: ", {"score":{"name":"base_layer", "objective":"int"}}, ","]
tellraw @a ["    ", "nvec: ", "[", {"score":{"name":"nvec_x", "objective":"int"}}, ", " ,{"score":{"name":"nvec_y", "objective":"int"}}, ", " ,{"score":{"name":"nvec_z", "objective":"int"}}, "]"]
tellraw @a "}"