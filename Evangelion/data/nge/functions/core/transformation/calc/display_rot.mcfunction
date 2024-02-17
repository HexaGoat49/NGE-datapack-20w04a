scoreboard players operation @s angle = @s alpha
scoreboard players operation @s angle /= G2 global
function nge:core/transformation/calc/sine
execute store result entity @s transformation.left_rotation[1] float 0.001 run scoreboard players get @s out
function nge:core/transformation/calc/cosine
execute store result entity @s transformation.left_rotation[3] float 0.001 run scoreboard players get @s out
 
scoreboard players operation @s angle = @s beta
scoreboard players operation @s angle /= G2 global
function nge:core/transformation/calc/sine
execute store result entity @s transformation.right_rotation[0] float 0.001 run scoreboard players get @s out
function nge:core/transformation/calc/cosine
execute store result entity @s transformation.right_rotation[3] float 0.001 run scoreboard players get @s out