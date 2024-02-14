# dz = len*cos(beta)
scoreboard players operation @s angle = @s beta
function nge:base/pos/trig/cosine
scoreboard players operation @s out *= @s len
scoreboard players operation @s out /= G1000 global
scoreboard players operation @s dz -= @s out
# M = len*sin(beta)
function nge:base/pos/trig/sine
scoreboard players operation @s math = @s out
scoreboard players operation @s math *= @s len
scoreboard players operation @s math /= G1000 global
scoreboard players operation @s angle = @s alpha
# dy = len*cos(alpha)*sin(beta) = M*cos(aplha)
function nge:base/pos/trig/cosine
scoreboard players operation @s out *= @s math
scoreboard players operation @s out /= G1000 global
scoreboard players operation @s dy += @s out
# dx = len*sin(alpha)*sin(beta) = M*sin(alpha)
function nge:base/pos/trig/sine
scoreboard players operation @s out *= @s math
scoreboard players operation @s out /= G1000 global
scoreboard players operation @s dx -= @s out





