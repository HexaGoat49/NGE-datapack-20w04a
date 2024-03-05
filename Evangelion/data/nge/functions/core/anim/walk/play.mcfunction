scoreboard players set @s[scores={time=40}] time 0
execute as @s[scores={time=0}] run function nge:core/anim/walk/0
execute as @s[scores={time=10}] run function nge:core/anim/walk/1
execute as @s[scores={time=20}] run function nge:core/anim/walk/2
execute as @s[scores={time=30}] run function nge:core/anim/walk/3
scoreboard players add @s time 1

execute on passengers as @s run function nge:core/anim/walk/play