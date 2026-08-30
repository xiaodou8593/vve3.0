#vve:slope_xn/_proj
# 把数据模板投射到临时对象
# 输入数据模板storage vve:io input

execute store result score x int run data get storage vve:io input.coord[0] 10000
execute store result score y int run data get storage vve:io input.coord[1] 10000
execute store result score z int run data get storage vve:io input.coord[2] 10000
execute store result score chunk_x_min int run data get storage vve:io input.chunk_range[0]
execute store result score chunk_z_min int run data get storage vve:io input.chunk_range[1]
execute store result score chunk_x_max int run data get storage vve:io input.chunk_range[2]
execute store result score chunk_z_max int run data get storage vve:io input.chunk_range[3]
execute store result score w int run data get storage vve:io input.size[0] 10000
execute store result score l int run data get storage vve:io input.size[1] 10000
execute store result score h int run data get storage vve:io input.size[2] 10000
execute store result score base_layer int run data get storage vve:io input.base_layer 10000
execute store result score nvec_x int run data get storage vve:io input.nvec[0] 10000
execute store result score nvec_y int run data get storage vve:io input.nvec[1] 10000
execute store result score nvec_z int run data get storage vve:io input.nvec[2] 10000