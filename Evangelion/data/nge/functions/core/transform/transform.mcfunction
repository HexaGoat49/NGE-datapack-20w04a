tag @s add this
execute as @e[tag=rotator] if score @e[tag=this,limit=1] id = @s id run tag @s add thisRotator
execute as @e[tag=point] if score @e[tag=this,limit=1] id = @s id run tag @s add thisPoint

execute on vehicle store result entity @e[tag=this,limit=1] Rotation[0] float 0.001 run data get entity @s Rotation[0] 1000.0
execute on vehicle store result entity @e[tag=this,limit=1] Rotation[1] float 0.001 run data get entity @s Rotation[1] 1000.0

execute on vehicle run scoreboard players operation @e[tag=this,limit=1] fAlpha = @s fAlpha
execute on vehicle run scoreboard players operation @e[tag=this,limit=1] fBeta = @s fBeta
function nge:core/transform/translation

scoreboard players operation @s fAlpha += @s alpha
scoreboard players operation @s fBeta += @s beta
function nge:core/transform/display

tag @e[tag=thisRotator] remove thisRotator
tag @e[tag=thisPoint] remove thisPoint
tag @s remove this

execute on passengers at @s run function nge:core/transform/transform