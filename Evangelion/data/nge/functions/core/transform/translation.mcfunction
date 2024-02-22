execute store result entity @e[tag=thisRotator,limit=1] Rotation[0] float -0.001 run scoreboard players get @s fAlpha
execute store result entity @e[tag=thisRotator,limit=1] Rotation[1] float 0.001 run scoreboard players get @s fBeta
execute at @e[tag=thisRotator,limit=1] run function nge:core/transform/pivots

execute as @e[tag=thisPoint] store result score @s dx run data get entity @s Pos[0] 1000.0
execute as @e[tag=thisPoint] store result score @s dy run data get entity @s Pos[1] 1000.0
execute as @e[tag=thisPoint] store result score @s dz run data get entity @s Pos[2] 1000.0

execute store result score @s dx run data get entity @e[tag=thisRotator,limit=1] Pos[0] 1000.0
execute store result score @s dy run data get entity @e[tag=thisRotator,limit=1] Pos[1] 1000.0
execute store result score @s dz run data get entity @e[tag=thisRotator,limit=1] Pos[2] 1000.0

# thisPoint.Position - Rotator.Position = delta 
scoreboard players operation @s dx -= @e[tag=thisPoint,limit=1] dx
scoreboard players operation @s dy -= @e[tag=thisPoint,limit=1] dy
scoreboard players operation @s dz -= @e[tag=thisPoint,limit=1] dz

execute on vehicle run scoreboard players operation @e[tag=this,limit=1] tx = @s tx
execute on vehicle run scoreboard players operation @e[tag=this,limit=1] ty = @s ty
execute on vehicle run scoreboard players operation @e[tag=this,limit=1] tz = @s tz
scoreboard players operation @s tx -= @s dx
scoreboard players operation @s ty -= @s dy
scoreboard players operation @s tz -= @s dz

execute store result entity @s transformation.translation[0] float 0.001 run scoreboard players get @s tx
execute store result entity @s transformation.translation[1] float 0.001 run scoreboard players get @s ty
execute store result entity @s transformation.translation[2] float 0.001 run scoreboard players get @s tz
