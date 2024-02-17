tag @s remove inWater
tag @s add jumping
data modify entity @s Motion[1] set value 2.0d
function nge:core/motion
execute store result score @s m0 run data get entity @s Motion[0] 2000
execute store result score @s m2 run data get entity @s Motion[2] 2000