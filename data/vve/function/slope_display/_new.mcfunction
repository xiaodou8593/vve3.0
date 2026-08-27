#vve:slope_display/_new
# 使用数据模板生成实体对象
# 输入数据模板storage vve:io input
# 输入执行位置
# 输出 @e[tag=result,limit=1]

tag @e[tag=result] remove result
summon item_display ~ ~ ~ {Tags:["vve_slope_display", "result"],CustomName:"vve_slope_display"}
execute as @e[tag=result,limit=1] run function vve:slope_display/set
execute as @e[tag=result,limit=1] run function vve:slope_display/set_operation