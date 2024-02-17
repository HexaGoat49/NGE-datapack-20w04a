tag @s add tem
execute at @s on vehicle store result entity @e[tag=tem,limit=1,sort=nearest] Rotation[0] float 0.001 run data get entity @s Rotation[0] 1000.0
execute at @s on vehicle store result entity @e[tag=tem,limit=1,sort=nearest] Rotation[1] float 0.001 run data get entity @s Rotation[1] 1000.0
tag @s remove tem

scoreboard players operation @s alpha = @s rot0
scoreboard players operation @s beta = @s rot1

execute on passengers run function nge:core/transformation/child
execute on passengers run function nge:core/transformation/sub_child
