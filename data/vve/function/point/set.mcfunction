#vve:point/set
# vve:point/_new调用

execute store result score @s x run data get storage vve:io input.center[0] 10000
execute store result score @s y run data get storage vve:io input.center[1] 10000
execute store result score @s z run data get storage vve:io input.center[2] 10000
execute store result score @s vx run data get storage vve:io input.velocity[0] 10000
execute store result score @s vy run data get storage vve:io input.velocity[1] 10000
execute store result score @s vz run data get storage vve:io input.velocity[2] 10000