#vve:object/_apply_spin_as
# 为实例施加spin
# 输入<inertia,int,100>
# 输入vve:spin{...}
# 传入实例为执行者

function vve:object/_get
execute as 0-0-0-0-0 run function vve:object/_apply_spin
function vve:object/_store