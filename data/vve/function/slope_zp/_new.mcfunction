#vve:slope_zp/_new
# 使用数据模板生成实体对象
# 输入数据模板storage vve:io input
# 输出 @e[tag=result,limit=1]

tag @e[tag=result] remove result
summon marker 0 8 0 {Tags:["vve_slope_zp", "result"],CustomName:"vve_slope_zp"}
execute as @e[tag=result,limit=1] run function vve:slope_zp/set
execute as @e[tag=result,limit=1] run function vve:slope_zp/set_operation