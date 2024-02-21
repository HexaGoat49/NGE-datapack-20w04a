execute at @e[tag=rotator] if score @s id = @e[tag=rotator,limit=1,sort=nearest] id store result entity @e[tag=rotator,limit=1,sort=nearest] Rotation[0] float 0.01 run scoreboard players get @s angle 
execute as @e[tag=point] at @e[tag=rotator] if score @s id = @e[tag=rotator,limit=1,sort=nearest] id run tp @s ^ ^ ^1

# x = sin(a), z = - cos(a)   (why is negative? idfk)
execute as @e[tag=point] store result score @s sin run data get entity @s Pos[0] 100.0
execute as @e[tag=point] store result score @s cos run data get entity @s Pos[2] -100.0

execute at @e[tag=rotator] if score @s id = @e[tag=rotator,limit=1,sort=nearest] id store result score @s sin run data get entity @e[tag=rotator,limit=1,sort=nearest] Pos[0] 100.0
execute at @e[tag=rotator] if score @s id = @e[tag=rotator,limit=1,sort=nearest] id store result score @s cos run data get entity @e[tag=rotator,limit=1,sort=nearest] Pos[2] -100.0

execute at @e[tag=point] if score @s id = @e[tag=point,limit=1,sort=nearest] id run scoreboard players operation @s sin -= @e[tag=point,limit=1,sort=nearest] sin
execute at @e[tag=point] if score @s id = @e[tag=point,limit=1,sort=nearest] id run scoreboard players operation @s cos -= @e[tag=point,limit=1,sort=nearest] cos