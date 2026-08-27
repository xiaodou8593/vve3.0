#vve:test/id_discard/start

function vve:id/init
scoreboard players set #id vve_id 2147483640

# 生成测试程序实体
tag @e[tag=result] remove result
summon marker 0 0 0 {Tags:["test", "vve_test"], CustomName:"A"}
summon marker 0 0 0 {Tags:["test", "vve_test"], CustomName:"B"}
summon marker 0 0 0 {Tags:["test", "vve_test"], CustomName:"C"}
summon marker 0 0 0 {Tags:["test", "vve_test", "result"], CustomName:"D"}
execute as @e[tag=vve_test] run function vve:id/_pull

execute as @e[tag=result,limit=1] run function marker_control:data/_get

# 设置测试程序主函数和销毁函数
data modify storage marker_control:io result.tick_func set value "vve:test/id_discard/main"
data modify storage marker_control:io result.del_func set value "vve:test/id_discard/end"

execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked
tag @e[tag=result,limit=1] add entity_todel

# 设置测试程序运行时间
scoreboard players set @e[tag=result,limit=1] killtime 5

scoreboard players set test_n int 2147483641