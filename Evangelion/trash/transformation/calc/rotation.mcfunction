tag @s add tem

execute on vehicle run scoreboard players operation @e[tag=tem,limit=1] alpha = @s alpha
execute on vehicle run scoreboard players operation @e[tag=tem,limit=1] beta = @s beta
execute on vehicle run scoreboard players operation @e[tag=tem,limit=1] gamma = @s gamma

scoreboard players operation @s alpha += @s rot0
scoreboard players operation @s betaa += @s rot1
scoreboard players operation @s gamma += @s rot2

tag @s remove tem

execute on passengers at @s run function nge:core/transformation/calc/rotation