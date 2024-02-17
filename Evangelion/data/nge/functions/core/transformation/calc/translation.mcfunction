# dy += sin(beta)*pz
scoreboard players operation @s angle = @s beta
function nge:core/transformation/calc/sine
scoreboard players operation @s out *= @s pLen
scoreboard players operation @s out /= G100 global
scoreboard players operation @s dy += @s out

# var = len*cos(beta)
function nge:core/transformation/calc/cosine
scoreboard players operation @s out *= @s pLen
scoreboard players operation @s out /= G100 global
scoreboard players operation @s var = @s out

scoreboard players operation @s angle = @s alpha
# dx -= sin(alpha)*var
function nge:core/transformation/calc/sine
scoreboard players operation @s out *= @s var
scoreboard players operation @s out /= G100 global
scoreboard players operation @s dx -= @s out

# dz -= cos(alpha)*var
function nge:core/transformation/calc/cosine
scoreboard players operation @s out *= @s var
scoreboard players operation @s out /= G100 global
scoreboard players operation @s dz -= @s out
