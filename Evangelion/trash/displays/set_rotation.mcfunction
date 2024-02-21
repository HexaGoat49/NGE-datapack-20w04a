tag @s add tem
scoreboard players set @s fR1 0
execute at @s on vehicle run scoreboard players operation @e[tag=tem,limit=1,sort=nearest] fR1 = @s fR1
scoreboard players operation @s fR1 += @s rot1
tag @s remove tem

execute on passengers at @s run function nge:core/displays/set_rotation
