#vve:shader/init

scoreboard objectives add int dummy
scoreboard players set angle int 0
scoreboard players set stemp int 0
scoreboard players set color int 0
scoreboard players set 360 int 360
scoreboard players set 256 int 256
scoreboard players set 255 int 255
scoreboard players set 180 int 180
# Rotation：2位
scoreboard players set roll_packet_high_base int -67175680
scoreboard players set roll_packet_low_base int -67175936
# FakeFOV：立即设置
scoreboard players set fakefov_instant_base int -67175168
# FakeFOV：以固定速度平滑变化
scoreboard players set fakefov_linear_base int -67175424

# psi一整圈：360° × 10000
scoreboard players set psi_turn int 3600000
scoreboard players set psi_half_turn int 1800000

# 用于低位四舍五入

scoreboard players set -1 int -1
scoreboard players set 64 int 64
scoreboard players set 256 int 256
scoreboard players set 360 int 360
scoreboard players set 1024 int 1024
scoreboard players set 10000 int 10000