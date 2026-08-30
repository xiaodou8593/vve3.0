#vve:slope_zp/_pop
# 临时对象出栈

data modify storage vve:io input set from storage vve:io rec[0]
data remove storage vve:io rec[0]
function vve:slope_zp/_proj