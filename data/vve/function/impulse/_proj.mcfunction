#vve:impulse/_proj
# 把数据模板投射到临时对象
# 输入数据模板storage vve:io input

execute store result score impulse_x int run data get storage vve:io input.center[0] 10000
execute store result score impulse_y int run data get storage vve:io input.center[1] 10000
execute store result score impulse_z int run data get storage vve:io input.center[2] 10000
execute store result score impulse_fx int run data get storage vve:io input.vector[0] 10000
execute store result score impulse_fy int run data get storage vve:io input.vector[1] 10000
execute store result score impulse_fz int run data get storage vve:io input.vector[2] 10000