# Executed at rotator
tp @e[tag=thisPoint] ~ ~ ~

execute if entity @s[tag=chair] run tp @e[tag=thisPoint] ^ ^0.25 ^-0.25
execute if entity @s[tag=interior] run tp @e[tag=thisPoint] ^ ^-3.5 ^-0.5

execute if entity @s[tag=chest] run tp @e[tag=thisPoint] ^ ^1.75 ^-0.5
execute if entity @s[tag=torso] run tp @e[tag=thisPoint] ^ ^-3 ^
execute if entity @s[tag=leftArm] run tp @e[tag=thisPoint] ^8.5 ^-0.7 ^0.5
execute if entity @s[tag=rightArm] run tp @e[tag=thisPoint] ^-8.5 ^-0.7 ^0.5
execute if entity @s[tag=leftForearm] run tp @e[tag=thisPoint] ^1.9 ^-8.25 ^
execute if entity @s[tag=rightForearm] run tp @e[tag=thisPoint] ^-1.9 ^-8.25 ^
execute if entity @s[tag=leftLeg] run tp @e[tag=thisPoint] ^4.36 ^-10.5 ^4.3
execute if entity @s[tag=rightLeg] run tp @e[tag=thisPoint] ^-4.36 ^-10.5 ^4.3
execute if entity @s[tag=leftCalf] run tp @e[tag=thisPoint] ^-0.5 ^-13 ^2
execute if entity @s[tag=rightCalf] run tp @e[tag=thisPoint] ^0.5 ^-13 ^2
execute if entity @s[tag=leftFoot] run tp @e[tag=thisPoint] ^ ^-10.5 ^-1
execute if entity @s[tag=rightFoot] run tp @e[tag=thisPoint] ^ ^-10.5 ^-1
execute if entity @s[tag=opTop] run tp @e[tag=thisPoint] ^ ^3.9 ^-0.74
execute if entity @s[tag=opBottom] run tp @e[tag=thisPoint] ^ ^3.9 ^-0.74
execute if entity @s[tag=opWing] run tp @e[tag=thisPoint] ^7.96 ^12.5 ^-3.12
execute if entity @s[tag=mainhand] run tp @e[tag=thisPoint] ^ ^-9.35 ^-0.35
execute if entity @s[tag=offhand] run tp @e[tag=thisPoint] ^ ^-9.35 ^-0.35
execute if entity @s[tag=head] run tp @e[tag=thisPoint] ^ ^5 ^4.3
execute if entity @s[tag=jaw] run tp @e[tag=thisPoint] ^ ^ ^2.5

