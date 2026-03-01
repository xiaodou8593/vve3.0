#vve:cpoint/_iter_v_max
# 迭代最大线速度分量
# 输入<res,int,1w>
# 输出<res,int,1w>

scoreboard players operation stemp_abs int = c_vx int
execute if score stemp_abs int matches ..-1 run scoreboard players operation stemp_abs int *= -1 int
scoreboard players operation res int > stemp_abs int

scoreboard players operation stemp_abs int = c_vy int
execute if score stemp_abs int matches ..-1 run scoreboard players operation stemp_abs int *= -1 int
scoreboard players operation res int > stemp_abs int

scoreboard players operation stemp_abs int = c_vz int
execute if score stemp_abs int matches ..-1 run scoreboard players operation stemp_abs int *= -1 int
scoreboard players operation res int > stemp_abs int