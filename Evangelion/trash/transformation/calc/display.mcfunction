scoreboard players operation @s a0 = @s alpha
scoreboard players operation @s a0 /= G2 global

scoreboard players operation @s a1 = @s beta
scoreboard players operation @s a1 /= G2 global

function nge:core/transformation/calc/deltas
execute store result entity @s transformation.left_rotation[3] float 0.01 run scoreboard players get @s dz
execute store result entity @s transformation.left_rotation[1] float -0.01 run scoreboard players get @s dx

scoreboard players operation @s a1 -= G9000 global
function nge:core/transformation/calc/deltas
execute store result entity @s transformation.left_rotation[2] float 0.01 run scoreboard players get @s dx
execute store result entity @s transformation.left_rotation[0] float 0.01 run scoreboard players get @s dz

scoreboard players operation @s angle = @s gamma
scoreboard players operation @s angle /= G2 global
function nge:core/transformation/calc/sine
#execute store result entity @s transformation.right_rotation[2] float 0.01 run scoreboard players get @s out
function nge:core/transformation/calc/cosine
#execute store result entity @s transformation.right_rotation[3] float 0.01 run scoreboard players get @s out

