#vve:object/_regular
# 规整化姿态，消除法向角速度
# 输入nvec{...}
# 输入receiver{...}
# 需要传入世界实体为执行者

# 平面四元数
function math:iquat/_nvec_to

# 转换为相对四元数
function math:quat/_relative
function math:rquat/_to_quat

# 四元数规整化
function math:quat/_touvw
function math:quat/_regular
function math:rquat/_to_quat

# 转换为世界坐标系
function math:quat/_mult
function math:rquat/_to_quat

scoreboard players operation angular_x int /= 100 int
scoreboard players operation angular_y int /= 100 int
scoreboard players operation angular_z int /= 100 int

scoreboard players operation angular_x int *= nvec_x int
scoreboard players operation angular_y int *= nvec_y int
scoreboard players operation angular_z int *= nvec_z int
scoreboard players operation angular_x int += angular_y int
scoreboard players operation angular_x int += angular_z int
execute store result score angular_y int store result score angular_z int run scoreboard players operation angular_x int /= 10000 int

scoreboard players operation angular_x int *= nvec_x int
scoreboard players operation angular_y int *= nvec_y int
scoreboard players operation angular_z int *= nvec_z int
scoreboard players operation angular_x int /= 100 int
scoreboard players operation angular_y int /= 100 int
scoreboard players operation angular_z int /= 100 int

function vve:object/_set_angular