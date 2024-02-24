scoreboard players operation @s angle = @s fAlpha
scoreboard players operation @s angle /= G2 global
function nge:core/transform/trig
execute store result entity @s transformation.left_rotation[1] float 0.001 run scoreboard players get @s sin
execute store result entity @s transformation.left_rotation[3] float 0.001 run scoreboard players get @s cos
 
scoreboard players operation @s angle = @s fBeta
scoreboard players operation @s angle /= G2 global
function nge:core/transform/trig
execute store result entity @s transformation.right_rotation[0] float 0.001 run scoreboard players get @s sin
execute store result entity @s transformation.right_rotation[3] float 0.001 run scoreboard players get @s cos
