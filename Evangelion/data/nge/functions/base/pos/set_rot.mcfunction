scoreboard players operation @s angle = @s rot0
scoreboard players operation @s angle /= G2 global
function nge:base/pos/trig/sine
execute store result entity @s transformation.left_rotation[2] float 0.001 run scoreboard players get @s out
function nge:base/pos/trig/cosine
execute store result entity @s transformation.left_rotation[3] float 0.001 run scoreboard players get @s out
 
scoreboard players operation @s angle = @s rot1
scoreboard players operation @s angle /= G2 global
function nge:base/pos/trig/sine
execute store result entity @s transformation.right_rotation[0] float 0.001 run scoreboard players get @s out
function nge:base/pos/trig/cosine
execute store result entity @s transformation.right_rotation[3] float 0.001 run scoreboard players get @s out

#data merge entity @s {interpolation_duration:50,start_interpolation:0}

execute on passengers run function nge:base/pos/sub_child