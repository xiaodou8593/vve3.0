#vve:slope_display/_proj
# 把数据模板投射到临时对象
# 输入数据模板storage vve:io input

execute store result score x int run data get storage vve:io input.center[0] 10000
execute store result score y int run data get storage vve:io input.center[1] 10000
execute store result score z int run data get storage vve:io input.center[2] 10000
execute store result score w int run data get storage vve:io input.size[0] 10000
execute store result score l int run data get storage vve:io input.size[1] 10000
execute store result score h int run data get storage vve:io input.size[2] 10000
execute store result score theta int run data get storage vve:io input.theta 10000