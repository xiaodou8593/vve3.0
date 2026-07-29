# ==================================================
# vve:shader/roll_update
#
# 输入：
#   psi int
#       物理体当前滚转角
#       单位：度 × 10000
#
# 输出：
#   向高位、低位和FakeFOV频道发送控制粒子
#
# 角度方向：
#   直接使用psi，不取反
#
# 16位精度：
#   360 / 65536 = 0.0054931640625度
# ==================================================

# marker:
# alpha=251, red=254, green=251, blue=0
scoreboard players set roll_high_base int -67175680

# marker:
# alpha=251, red=254, green=250, blue=0
scoreboard players set roll_low_base int -67175936

# marker:
# alpha=251, red=254, green=253, blue=0
scoreboard players set fakefov_instant_base int -67175168


# --------------------------------------------------
# 1. 直接读取psi
#
# 将任意正负角度归一化到：
#   0 <= psi_normalized < 3600000
# --------------------------------------------------

scoreboard players operation angle int *= 10000 int
scoreboard players operation psi_normalized int = angle int
scoreboard players operation psi_normalized int %= psi_turn int

execute if score psi_normalized int matches ..-1 run scoreboard players operation psi_normalized int += psi_turn int


# --------------------------------------------------
# 2. 计算16位角度的高字节
#
# psi_scaled最大值：
#   3599999 * 256 = 921599744
#
# 不会超过32位有符号整数范围。
# --------------------------------------------------

scoreboard players operation psi_scaled int = psi_normalized int
scoreboard players operation psi_scaled int *= const_256 int

scoreboard players operation angle_high int = psi_scaled int
scoreboard players operation angle_high int /= psi_turn int


# --------------------------------------------------
# 3. 求高字节除法留下的余数
#
# psi_remainder =
#   psi_scaled - angle_high * psi_turn
# --------------------------------------------------

scoreboard players operation psi_high_part int = angle_high int
scoreboard players operation psi_high_part int *= psi_turn int

scoreboard players operation psi_remainder int = psi_scaled int
scoreboard players operation psi_remainder int -= psi_high_part int


# --------------------------------------------------
# 4. 根据余数计算低字节
#
# angle_low =
#   round(psi_remainder * 256 / psi_turn)
#
# 先加半个除数，实现正整数四舍五入。
# --------------------------------------------------

scoreboard players operation angle_low int = psi_remainder int
scoreboard players operation angle_low int *= const_256 int
scoreboard players operation angle_low int += psi_half_turn int
scoreboard players operation angle_low int /= psi_turn int


# --------------------------------------------------
# 5. 处理低字节四舍五入产生的进位
#
# 如果angle_low被四舍五入成256：
#   low  = 0
#   high = high + 1
#
# 如果high继续进位成256，则一整圈回到0。
# --------------------------------------------------

execute if score angle_low int matches 256.. run scoreboard players add angle_high int 1
execute if score angle_low int matches 256.. run scoreboard players set angle_low int 0

execute if score angle_high int matches 256.. run scoreboard players set angle_high int 0


# --------------------------------------------------
# 6. 发送高字节
#
# 必须对应：
#   green=251
#   alpha=251
#   循环插值op=2或op=4
#
# 循环通道会把blue解释为blue/256。
# --------------------------------------------------

scoreboard players operation color int = roll_high_base int
scoreboard players operation color int += angle_high int

execute store result storage vve:shader color int 1 run scoreboard players get color int
function vve:shader/roll_linear with storage vve:shader


# --------------------------------------------------
# 7. 发送低字节
#
# 必须对应：
#   green=250
#   alpha=251
#   非循环加速插值op=3
#
# 非循环通道会把blue解释为blue/255。
# --------------------------------------------------

scoreboard players operation color int = roll_low_base int
scoreboard players operation color int += angle_low int

execute store result storage vve:shader color int 1 run scoreboard players get color int
function vve:shader/roll_linear with storage vve:shader


# --------------------------------------------------
# 8. 启用完整FakeFOV安全裁切
#
# blue=255，即FakeFOV=1.0。
# --------------------------------------------------

scoreboard players operation color int = fakefov_instant_base int
scoreboard players add color int 255

execute store result storage vve:shader color int 1 run scoreboard players get color int
function vve:shader/roll_linear with storage vve:shader