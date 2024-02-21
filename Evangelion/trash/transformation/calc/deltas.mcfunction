# This function calculates dx, dy and dz
execute at @e[tag=rotator] if score @s id = @e[tag=rotator,limit=1,sort=nearest] id store result entity @e[tag=rotator,limit=1,sort=nearest] Rotation[0] float 0.01 run scoreboard players get @s a0
execute at @e[tag=rotator] if score @s id = @e[tag=rotator,limit=1,sort=nearest] id store result entity @e[tag=rotator,limit=1,sort=nearest] Rotation[1] float 0.01 run scoreboard players get @s a1
execute as @e[tag=point] at @e[tag=rotator] if score @s id = @e[tag=rotator,limit=1,sort=nearest] id run tp @s ^ ^ ^-1

execute as @e[tag=point] store result score @s dx run data get entity @s Pos[0] 100.0
execute as @e[tag=point] store result score @s dy run data get entity @s Pos[1] 100.0
execute as @e[tag=point] store result score @s dz run data get entity @s Pos[2] 100.0

execute at @e[tag=rotator] if score @s id = @e[tag=rotator,limit=1,sort=nearest] id store result score @s dx run data get entity @e[tag=rotator,limit=1,sort=nearest] Pos[0] 100.0
execute at @e[tag=rotator] if score @s id = @e[tag=rotator,limit=1,sort=nearest] id store result score @s dy run data get entity @e[tag=rotator,limit=1,sort=nearest] Pos[1] 100.0
execute at @e[tag=rotator] if score @s id = @e[tag=rotator,limit=1,sort=nearest] id store result score @s dz run data get entity @e[tag=rotator,limit=1,sort=nearest] Pos[2] 100.0

execute at @e[tag=point] if score @s id = @e[tag=point,limit=1,sort=nearest] id run scoreboard players operation @s dx -= @e[tag=point,limit=1,sort=nearest] dx
execute at @e[tag=point] if score @s id = @e[tag=point,limit=1,sort=nearest] id run scoreboard players operation @s dy -= @e[tag=point,limit=1,sort=nearest] dy
execute at @e[tag=point] if score @s id = @e[tag=point,limit=1,sort=nearest] id run scoreboard players operation @s dz -= @e[tag=point,limit=1,sort=nearest] dz