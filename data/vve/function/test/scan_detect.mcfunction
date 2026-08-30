#vve:test/scan_detect

tp @e[tag=math_marker,limit=1] -636.0 86.0 -85.0
execute as @e[tag=math_marker,limit=1] at @s positioned ~32 ~ ~ run function vve:_scan_detect {detect_func:"vve_tutor:_detect_plane"}