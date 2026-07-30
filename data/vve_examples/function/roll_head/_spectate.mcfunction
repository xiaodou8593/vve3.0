#vve_examples:roll_head/_spectate
# 旁观视角
# 输入player @a[tag=input,limit=1]

execute as @a[tag=input,limit=1] unless entity @s[tag=vve_id] run function vve:id/_pull
scoreboard players operation @s int = @a[tag=input,limit=1] vve_id

gamemode spectator @a[tag=input,limit=1]
#scoreboard players operation tempid int = @s vve_id
#execute as @e[tag=vve_examples_roll_head_cam] if score @s int = tempid int run tag @s add tmp_1
#spectate @e[tag=tmp_1,limit=1] @a[tag=input,limit=1]
#tag @e[tag=tmp_1] remove tmp_1
spectate @s @a[tag=input,limit=1]

tag @s add spectating