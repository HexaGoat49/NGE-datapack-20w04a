scoreboard players operation @s dx = @s tx
scoreboard players operation @s dy = @s ty
scoreboard players operation @s dz = @s tz

tag @s add tem1
execute at @s on vehicle run scoreboard players operation @e[tag=tem1,limit=1,sort=nearest] alpha = @s rot0
execute at @s on vehicle run scoreboard players operation @e[tag=tem1,limit=1,sort=nearest] beta = @s rot1
tag @s remove tem1

scoreboard players operation @s rot0 = @s alpha
scoreboard players operation @s rot1 = @s beta
function nge:base/pos/set_rot

scoreboard players operation @s alpha += @s dr0
scoreboard players operation @s beta += @s dr1
function nge:base/pos/calc_trans

execute store result entity @s transformation.translation[0] float 0.001 run scoreboard players get @s dx
execute store result entity @s transformation.translation[1] float 0.001 run scoreboard players get @s dy
execute store result entity @s transformation.translation[2] float 0.001 run scoreboard players get @s dz
