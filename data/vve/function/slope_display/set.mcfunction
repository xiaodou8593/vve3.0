#vve:slope_display/set
# vve:slope_display/_new调用

execute store result score @s x run data get storage vve:io input.center[0] 10000
execute store result score @s y run data get storage vve:io input.center[1] 10000
execute store result score @s z run data get storage vve:io input.center[2] 10000
execute store result score @s w run data get storage vve:io input.size[0] 10000
execute store result score @s l run data get storage vve:io input.size[1] 10000
execute store result score @s h run data get storage vve:io input.size[2] 10000
execute store result score @s theta run data get storage vve:io input.theta 10000