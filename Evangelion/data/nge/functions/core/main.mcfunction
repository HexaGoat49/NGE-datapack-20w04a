# This is not actually the main function, lol
execute at @s as @e[tag=evaPart] if score @s id = @e[tag=main,limit=1,sort=nearest] id run function nge:core/position

execute store result score @s m1 run data get entity @s Motion[1] 10000
function nge:core/motion with entity @s[tag=!jumping,predicate=nge:can_run]

scoreboard players remove @s water 1
function nge:core/water/check with entity @s[predicate=nge:should_check]
data modify entity @s[tag=inWater] Motion[1] set value -0.7d

tag @s[tag=jumping,predicate=nge:should_stop_falling] remove jumping
execute store result entity @s[tag=jumping] Motion[0] double 0.001 run scoreboard players get @s m0
execute store result entity @s[tag=jumping] Motion[2] double 0.001 run scoreboard players get @s m2
scoreboard players set @s[predicate=nge:should_stop_falling] m0 0
scoreboard players set @s[predicate=nge:should_stop_falling] m2 0

execute at @a as @s if score @s id = @p id run tag @p remove rotate
execute at @a[predicate=nge:has_motion] as @s[tag=!jumping] if score @s id = @p id run tag @p add rotate

fill ~9 ~-1 ~9 ~-9 ~-3 ~-9 dirt replace farmland