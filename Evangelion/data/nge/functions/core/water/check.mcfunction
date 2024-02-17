fill ~8 ~ ~8 ~-8 ~ ~-8 structure_void replace water
execute store result score @s water run fill ~9 ~ ~9 ~-9 ~ ~-9 water replace structure_void

execute if entity @s[scores={water=160..,m1=..0},tag=!inWater] at @s run function nge:base/water/sound
tag @s remove inWater
tag @s[scores={water=10..,m1=..0}] add inWater

scoreboard players set @s water 0
