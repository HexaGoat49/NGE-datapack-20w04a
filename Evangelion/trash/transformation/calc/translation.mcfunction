# Get translation from the parent
tag @s add tem

execute on vehicle run scoreboard players operation @e[tag=tem,limit=1] tx = @s tx
execute on vehicle run scoreboard players operation @e[tag=tem,limit=1] ty = @s ty
execute on vehicle run scoreboard players operation @e[tag=tem,limit=1] tz = @s tz

tag @s remove tem

# y/l = dy(alpha, beta) * cos(gamma)
# x/l = dz(alpha, beta) * cos(gamma) + dx(alpha, gamma - 90)
# z/l = -dx(alpha, beta) * cos(gamma) + dz(alpha, gamma - 90)

scoreboard players operation @s a0 = @s alpha
scoreboard players operation @s a0 += @s pRot0
scoreboard players operation @s a1 = @s beta
scoreboard players operation @s a1 += @s pRot1

function nge:core/transformation/calc/deltas
function nge:core/transformation/calc/scale_deltas

scoreboard players operation @s tx += @s dz
scoreboard players operation @s ty += @s dy
scoreboard players operation @s tz -= @s dx

scoreboard players operation @s angle = @s gamma
function nge:core/transformation/calc/cosine

scoreboard players operation @s ty *= @s out
scoreboard players operation @s tx *= @s out
scoreboard players operation @s tz *= @s out

scoreboard players operation @s ty /= G100 global
scoreboard players operation @s tx /= G100 global
scoreboard players operation @s tz /= G100 global

scoreboard players operation @s a1 = @s gamma
scoreboard players operation @s a1 -= G9000 global
function nge:core/transformation/calc/deltas
function nge:core/transformation/calc/scale_deltas

scoreboard players operation @s tx += @s dx
scoreboard players operation @s tz += @s dz

execute store result entity @s transformation.translation[0] float 0.01 run scoreboard players get @s tx
execute store result entity @s transformation.translation[1] float 0.01 run scoreboard players get @s ty
execute store result entity @s transformation.translation[2] float 0.01 run scoreboard players get @s tz

