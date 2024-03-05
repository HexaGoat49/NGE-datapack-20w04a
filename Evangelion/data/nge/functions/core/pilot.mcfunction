execute if entity @s[predicate=nge:is_not_riding] run function nge:ride
execute as @s store result score @s m0 run data get entity @s Motion[0] 10000
execute as @s store result score @s m2 run data get entity @s Motion[2] 10000
effect give @s invisibility 1 1 true

execute at @s[tag=rotate] as @e[tag=root] if score @p id = @s id store result entity @s Rotation[0] float 0.001 run data get entity @p Rotation[0] 1000.0

execute as @e[tag=root] store result score @s alpha run data get entity @s Rotation[0] -1000
execute as @s store result score @s alpha run data get entity @s Rotation[0] -1000
execute as @s store result score @s beta run data get entity @s Rotation[1] 1000
execute at @s as @e[tag=root] if score @p id = @s id run scoreboard players operation @p alpha -= @s alpha