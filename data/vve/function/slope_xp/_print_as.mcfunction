#vve:slope_xp/_print_as
# 打印实例数据

tellraw @a ["_entity: ", "{"]
tellraw @a ["    ", "coord: ", "[", {"score":{"name":"@s", "objective":"x"}}, ", " ,{"score":{"name":"@s", "objective":"y"}}, ", " ,{"score":{"name":"@s", "objective":"z"}}, "]", ","]
tellraw @a ["    ", "chunk_range: ", "[", {"score":{"name":"@s", "objective":"chunk_x_min"}}, ", " ,{"score":{"name":"@s", "objective":"chunk_z_min"}}, ", " ,{"score":{"name":"@s", "objective":"chunk_x_max"}}, ", " ,{"score":{"name":"@s", "objective":"chunk_z_max"}}, "]", ","]
tellraw @a ["    ", "size: ", "[", {"score":{"name":"@s", "objective":"w"}}, ", " ,{"score":{"name":"@s", "objective":"l"}}, ", " ,{"score":{"name":"@s", "objective":"h"}}, "]", ","]
tellraw @a ["    ", "base_layer: ", {"score":{"name":"@s", "objective":"base_layer"}}, ","]
tellraw @a ["    ", "nvec: ", "[", {"score":{"name":"@s", "objective":"nvec_x"}}, ", " ,{"score":{"name":"@s", "objective":"nvec_y"}}, ", " ,{"score":{"name":"@s", "objective":"nvec_z"}}, "]"]
tellraw @a "}"