#vve:_print_response
# 输出所有介质响应

tellraw @a "---vve response---"
tellraw @a ["grab_layer_response: ", {"score":{"name":"grab_layer_response","objective":"int"}}]
tellraw @a ["bounce_layer_response: ", {"score":{"name":"bounce_layer_response","objective":"int"}}]
tellraw @a ["friction_response: ", {"score":{"name":"friction_response","objective":"int"}}]
execute if score impulse_response int matches 1.. run function vve:impulse/_print
execute if score shift_response int matches 1.. run function vve:shift/_print