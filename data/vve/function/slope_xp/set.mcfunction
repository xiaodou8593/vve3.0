#vve:slope_xp/set
# vve:slope_xp/_new调用

execute store result score @s x run data get storage vve:io input.coord[0] 10000
execute store result score @s y run data get storage vve:io input.coord[1] 10000
execute store result score @s z run data get storage vve:io input.coord[2] 10000
execute store result score @s chunk_x_min run data get storage vve:io input.chunk_range[0]
execute store result score @s chunk_z_min run data get storage vve:io input.chunk_range[1]
execute store result score @s chunk_x_max run data get storage vve:io input.chunk_range[2]
execute store result score @s chunk_z_max run data get storage vve:io input.chunk_range[3]
execute store result score @s w run data get storage vve:io input.size[0] 10000
execute store result score @s l run data get storage vve:io input.size[1] 10000
execute store result score @s h run data get storage vve:io input.size[2] 10000
execute store result score @s nvec_x run data get storage vve:io input.nvec[0] 10000
execute store result score @s nvec_y run data get storage vve:io input.nvec[1] 10000
execute store result score @s nvec_z run data get storage vve:io input.nvec[2] 10000