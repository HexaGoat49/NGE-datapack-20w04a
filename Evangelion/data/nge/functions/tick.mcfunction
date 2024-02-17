scoreboard players set @e[scores={alpha=..-180001}] alpha 180000
scoreboard players set @e[scores={alpha=180001..}] alpha -180000

scoreboard players set @e[scores={beta=..-180001}] beta 180000
scoreboard players set @e[scores={beta=180001..}] beta -180000

execute as @e[tag=main] at @s run function nge:base/main
execute as @a[predicate=nge:is_pilot] at @s run function nge:base/pilot
execute as @e[tag=root] on passengers at @s run function nge:base/displays
execute as @e[tag=evaPart] run function nge:base/pos/positionate