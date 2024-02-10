# Get quantity of water in a 16x1x16 zone 
fill ~8 ~ ~8 ~-8 ~ ~-8 structure_void replace water
execute store result score @s water run fill ~9 ~ ~9 ~-9 ~ ~-9 water replace structure_void

# Tag the player if is on water
execute if entity @s[scores={water=160..,m1=..0},tag=!inWater] at @s run function nge:water/sound
tag @s remove inWater
tag @s[scores={water=10..,m1=..0}] add inWater

# Restart the counter
scoreboard players set @s water 0
