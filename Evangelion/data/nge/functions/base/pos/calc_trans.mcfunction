# dy += sin(beta)*pz
scoreboard players operation @s angle = @s beta
function nge:base/pos/trig/sine
scoreboard players operation @s out *= @s pz
scoreboard players operation @s out /= G1000 global
scoreboard players operation @s dy += @s out

# V1 = cos(beta)*pz
function nge:base/pos/trig/cosine
scoreboard players operation @s V1 = @s out
scoreboard players operation @s V1 *= @s pz
scoreboard players operation @s V1 /= G1000 global
scoreboard players operation @s angle = @s alpha
# V2 = cos(alpha)
function nge:base/pos/trig/cosine
scoreboard players operation @s V2 = @s out
# V3 = sin(alpha)
function nge:base/pos/trig/sine
scoreboard players operation @s V3 = @s out

# dz += V3*px - V2*V1
scoreboard players operation @s out *= @s px
scoreboard players operation @s out /= G1000 global
scoreboard players operation @s dz += @s out

scoreboard players operation @s out = @s V2
scoreboard players operation @s out *= @s V1
scoreboard players operation @s out /= G1000 global
scoreboard players operation @s dz -= @s out

# dx -= V2*px + V3*V1
scoreboard players operation @s out = @s V2
scoreboard players operation @s out *= @s px
scoreboard players operation @s out /= G1000 global
scoreboard players operation @s dx -= @s out

scoreboard players operation @s out = @s V3
scoreboard players operation @s out *= @s V1
scoreboard players operation @s out /= G1000 global
scoreboard players operation @s dx -= @s out






