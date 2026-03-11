#vve:object/_rot_to
# 执行朝向转换为object临时对象
# 输入执行朝向
# 需要传入世界实体为执行者

function math:quat/_facing_to
scoreboard players set angular_x int 0
scoreboard players set angular_y int 0
scoreboard players set angular_z int 0
function vve:object/_set_angular

function math:quat/_touvw