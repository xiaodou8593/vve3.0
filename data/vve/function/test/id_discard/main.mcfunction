#vve:test/id_discard/main

scoreboard players operation tempid int = test_n int
tellraw @a "---"
tellraw @a ["test_n: ", {"score":{"name":"test_n","objective":"int"}}]
execute as @e[tag=vve_test,predicate=vve:match_id] run say 1
execute as @e[tag=vve_test,predicate=vve:match_id_discard] run say 2

scoreboard players add test_n int 1