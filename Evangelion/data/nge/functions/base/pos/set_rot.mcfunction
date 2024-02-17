scoreboard players operation @s angle = @s alpha
scoreboard players operation @s angle /= G2 global
function nge:base/pos/trig/sine
execute store result entity @s transformation.left_rotation[1] float 0.001 run scoreboard players get @s out
function nge:base/pos/trig/cosine
execute store result entity @s transformation.left_rotation[3] float 0.001 run scoreboard players get @s out
 
scoreboard players operation @s angle = @s beta
scoreboard players operation @s angle /= G2 global
function nge:base/pos/trig/sine
execute store result entity @s transformation.right_rotation[0] float 0.001 run scoreboard players get @s out
function nge:base/pos/trig/cosine
execute store result entity @s transformation.right_rotation[3] float 0.001 run scoreboard players get @s out

#execute on passengers run function nge:base/pos/sub_child