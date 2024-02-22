# Executed at rotator
tp @e[tag=thisPoint] ~ ~ ~

execute if entity @s[tag=torso] run tp @e[tag=thisPoint] ^ ^-5 ^
execute if entity @s[tag=leftArm] run tp @e[tag=thisPoint] ^8.5 ^-0.7 ^0.5
execute if entity @s[tag=rightArm] run tp @e[tag=thisPoint] ^-8.5 ^-0.7 ^0.5
execute if entity @s[tag=leftForearm] run tp @e[tag=thisPoint] ^1.9 ^-8.25 ^
execute if entity @s[tag=rightForearm] run tp @e[tag=thisPoint] ^-1.9 ^-8.25 ^
execute if entity @s[tag=leftLeg] run tp @e[tag=thisPoint] ^4.36 ^-10.5 ^4.3
execute if entity @s[tag=rightLeg] run tp @e[tag=thisPoint] ^-4.36 ^-10.5 ^4.3
execute if entity @s[tag=leftCalf] run tp @e[tag=thisPoint] ^-0.5 ^-13 ^2
execute if entity @s[tag=rightCalf] run tp @e[tag=thisPoint] ^0.5 ^-13 ^2

