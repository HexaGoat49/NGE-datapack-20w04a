data modify entity @e[tag=thisRotator,limit=1] Rotation[1] set value 0.0f
execute as @e[tag=thisRotator] store result entity @s Rotation[0] float -0.001 run scoreboard players get @e[tag=this,limit=1] angle
execute at @e[tag=thisRotator] run tp @e[tag=thisPoint] ^ ^ ^1

execute as @e[tag=thisPoint] store result score @s sin run data get entity @s Pos[0] 1000.0
execute as @e[tag=thisPoint] store result score @s cos run data get entity @s Pos[2] 1000.0

execute store result score @s sin run data get entity @e[tag=thisRotator,limit=1] Pos[0] 1000.0
execute store result score @s cos run data get entity @e[tag=thisRotator,limit=1] Pos[2] 1000.0
scoreboard players operation @s sin -= @e[tag=thisPoint,limit=1] sin
scoreboard players operation @s cos -= @e[tag=thisPoint,limit=1] cos
