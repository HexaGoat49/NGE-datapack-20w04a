scoreboard players set @e[tag=stand,scores={rot0=181..}] rot0 -180

execute as @e[tag=first] run scoreboard players operation @s alpha = @s rot0
execute as @e[tag=second] run scoreboard players operation @s alpha = @s rot0
scoreboard players operation @e[tag=second] alpha += @e[tag=first,limit=1] alpha
execute as @e[tag=third] run scoreboard players operation @s alpha = @s rot0
scoreboard players operation @e[tag=third] alpha += @e[tag=second,limit=1] alpha
execute as @e[tag=fourth] run scoreboard players operation @s alpha = @s rot0
scoreboard players operation @e[tag=fourth] alpha += @e[tag=third,limit=1] alpha

scoreboard players set @e[tag=stand,scores={alpha=181..}] alpha -180
execute as @e[tag=stand] store result entity @s Rotation[0] float 1.0 run scoreboard players get @s alpha



scoreboard players set @e[tag=stand,scores={rot1=181..}] rot1 -180

execute as @e[tag=first] run scoreboard players operation @s alpha = @s rot1
execute as @e[tag=second] run scoreboard players operation @s alpha = @s rot1
scoreboard players operation @e[tag=second] alpha += @e[tag=first,limit=1] alpha
execute as @e[tag=third] run scoreboard players operation @s alpha = @s rot1
scoreboard players operation @e[tag=third] alpha += @e[tag=second,limit=1] alpha
execute as @e[tag=fourth] run scoreboard players operation @s alpha = @s rot1
scoreboard players operation @e[tag=fourth] alpha += @e[tag=third,limit=1] alpha

scoreboard players set @e[tag=stand,scores={alpha=181..}] alpha -180
execute as @e[tag=stand] store result entity @s Rotation[1] float 1.0 run scoreboard players get @s alpha


execute as @e[tag=stand] at @s run particle dust 0 1 1 1.5 ~ ~ ~ 0 0 0 0.25 10 force @a
execute as @e[tag=stand] at @s run particle dust 0 1 0 1.5 ^ ^1 ^2 0 0 0 0.25 10 force @a