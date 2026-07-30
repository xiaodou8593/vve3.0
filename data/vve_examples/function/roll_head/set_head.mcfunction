#vve_examples:roll_head/set_head
# vve_examples:roll_head/set_operation调用

item replace entity @s container.0 with minecraft:player_head
tag @s add tmp_rollhead_tag
execute at @s as @p run item modify entity @n[tag = tmp_rollhead_tag] container.0 vve_examples:fill_head
tag @s remove tmp_rollhead_tag