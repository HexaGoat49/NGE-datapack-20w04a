execute if entity @s[predicate=nge:is_not_riding] run function nge:ride
execute as @s store result score @s m0 run data get entity @s Motion[0] 10000
execute as @s store result score @s m2 run data get entity @s Motion[2] 10000

execute at @s[tag=rotate] as @e[tag=evaPart] if score @s id = @p id store result entity @s Rotation[0] float 1.0 run data get entity @p Rotation[0] 1.0

