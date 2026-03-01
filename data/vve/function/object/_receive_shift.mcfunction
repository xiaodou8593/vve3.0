#vve:object/_receive_shift
# 接收位移响应
# 迭代receiver{...}

scoreboard players set shift_receiver_response int 1

execute if score shift_x int matches 1.. run scoreboard players operation shift_receiver_x int > shift_x int
execute if score shift_receiver_x int matches ..0 if score shift_x int matches ..-1 \
	run scoreboard players operation shift_receiver_x int < shift_x int

execute if score shift_y int matches 1.. run scoreboard players operation shift_receiver_y int > shift_y int
execute if score shift_receiver_y int matches ..0 if score shift_y int matches ..-1 \
	run scoreboard players operation shift_receiver_y int < shift_y int

execute if score shift_z int matches 1.. run scoreboard players operation shift_receiver_z int > shift_z int
execute if score shift_receiver_z int matches ..0 if score shift_z int matches ..-1 \
	run scoreboard players operation shift_receiver_z int < shift_z int