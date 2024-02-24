tag @s add tem

scoreboard players set @s angle 0
execute at @s on vehicle run scoreboard players operation @e[tag=tem,limit=1] angle = @s fR1

scoreboard players operation @s tz = @s len
scoreboard players operation @s ty = @s len

scoreboard players operation @s angle += @s tetha
function nge:core/displays/trig
scoreboard players operation @s tz *= @s sin
scoreboard players operation @s ty *= @s cos
scoreboard players operation @s tz /= G100 global
scoreboard players operation @s ty /= G100 global

execute at @s on vehicle run scoreboard players operation @e[tag=tem,limit=1,sort=nearest] ty += @s ty 
execute at @s on vehicle run scoreboard players operation @e[tag=tem,limit=1,sort=nearest] tz += @s tz

tag @s remove tem

execute store result entity @s transformation.translation[1] float 0.01 run scoreboard players get @s ty
execute store result entity @s transformation.translation[2] float 0.01 run scoreboard players get @s tz

execute on passengers at @s run function nge:core/displays/set_translation