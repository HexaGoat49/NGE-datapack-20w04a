# This function is being executed positionated in the main entity
execute store result score @s yPos run data get entity @s Pos[1] 1
execute as @e[tag=main,limit=1,sort=nearest] store result score @s yPos run data get entity @s Pos[1] 1
scoreboard players operation @e[tag=main,limit=1,sort=nearest] yPos += @s offset
execute store result entity @s Pos[1] double 1.0 run scoreboard players get @e[tag=main,limit=1,sort=nearest] yPos
