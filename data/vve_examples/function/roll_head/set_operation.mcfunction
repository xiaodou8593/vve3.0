#vve_examples:roll_head/set_operation
# vve_examples:roll_head/_new调用

function vve_examples:roll_head/_get
function vve_examples:roll_head/_update_display

function vve_examples:roll_head/set_head

function vve:id/_pull

scoreboard players operation tempid int = @s vve_id
summon item_display ~ ~ ~ {Tags:["vve_examples_roll_head_cam","stmp"],CustomName:"vve_examples_roll_head_cam",teleport_duration:1}
execute as @e[tag=stmp,limit=1] run function vve_examples:roll_head/cam_set