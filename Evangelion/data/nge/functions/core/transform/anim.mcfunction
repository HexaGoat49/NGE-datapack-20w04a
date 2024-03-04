scoreboard players remove @s[scores={animTime=2..}] animTime 1
scoreboard players operation @s[scores={animTime=2..}] animAlpha += @s deltaAlpha
scoreboard players operation @s[scores={animTime=2..}] animBeta += @s deltaBeta

scoreboard players operation @s[scores={animTime=..1}] animAlpha = @s alpha
scoreboard players operation @s[scores={animTime=..1}] animBeta = @s beta