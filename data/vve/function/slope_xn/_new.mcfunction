#vve:slope_xn/_new
# 使用数据模板生成实体对象
# 输入数据模板storage vve:io input
# 输出 @e[tag=result,limit=1]

tag @e[tag=result] remove result
summon marker 0 8 0 {Tags:["vve_slope_xn", "result"],CustomName:"vve_slope_xn"}
execute as @e[tag=result,limit=1] run function vve:slope_xn/set
execute as @e[tag=result,limit=1] run function vve:slope_xn/set_operation