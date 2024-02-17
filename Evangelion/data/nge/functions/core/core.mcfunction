execute as @e[tag=main] at @s run function nge:core/main
execute as @a[predicate=nge:is_pilot] at @s run function nge:core/pilot

execute as @e[tag=root] on passengers at @s run function nge:core/transformation/parent
