# Set rotation and teleport
execute at @e[tag=rotator] if score @s id = @e[tag=rotator,limit=1,sort=nearest] id store result entity @e[tag=rotator,limit=1,sort=nearest] Rotation[0] float 0.01 run scoreboard players get @s angle 
execute as @e[tag=point] at @e[tag=rotator] if score @s id = @e[tag=rotator,limit=1,sort=nearest] id run tp @s ^ ^ ^-1
# Get both positions and substract
execute as @e[tag=point] store result score @s out run data get entity @s Pos[2] 100.0
execute at @e[tag=rotator] if score @s id = @e[tag=rotator,limit=1,sort=nearest] id store result score @s out run data get entity @e[tag=rotator,limit=1,sort=nearest] Pos[2] 100.0
execute at @e[tag=point] if score @s id = @e[tag=point,limit=1,sort=nearest] id run scoreboard players operation @s out -= @e[tag=point,limit=1,sort=nearest] out