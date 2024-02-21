tag @s add tem

execute at @s on vehicle store result score @e[tag=tem,limit=1,sort=nearest] alpha run data get entity @s Rotation[0] 100.0
scoreboard players operation @s alpha += @s rot0
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s alpha

execute at @s on vehicle store result score @e[tag=tem,limit=1,sort=nearest] beta run data get entity @s Rotation[1] 100.0
scoreboard players operation @s beta += @s rot1
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s beta

tag @s remove tem
execute on passengers run function nge:core/transformation/child
execute on passengers run function nge:core/transformation/calc/display_rot