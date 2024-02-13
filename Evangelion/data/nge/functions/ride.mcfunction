function nge:dismount
execute as @s at @s store result score @s id run scoreboard players get @e[tag=main,limit=1,sort=nearest] id
execute at @a as @e[tag=vehicle] if score @s id = @p id run ride @p mount @s
attribute @s generic.scale base set 8

