scoreboard players set @s alpha 0
scoreboard players set @s beta 0

scoreboard players set @s[tag=torso] beta 30000

scoreboard players set @s[tag=leftArm] beta 15000
scoreboard players set @s[tag=leftArm] alpha -15000
scoreboard players set @s[tag=rightArm] beta 15000
scoreboard players set @s[tag=rightArm] alpha 15000

scoreboard players set @s[tag=leftForearm] beta -40000
scoreboard players set @s[tag=rightForearm] beta -40000
scoreboard players set @s[tag=mainhand] alpha 22500
scoreboard players set @s[tag=offhand] alpha -22500

scoreboard players set @s[tag=leftLeg] beta -45000
scoreboard players set @s[tag=leftLeg] alpha 22500
scoreboard players set @s[tag=rightLeg] beta -45000
scoreboard players set @s[tag=rightLeg] alpha -22500
scoreboard players set @s[tag=leftCalf] beta 22500
scoreboard players set @s[tag=rightCalf] beta 22500

scoreboard players set @s[tag=leftFoot] alpha -15000
scoreboard players set @s[tag=leftFoot] beta -7000
scoreboard players set @s[tag=rightFoot] alpha 15000
scoreboard players set @s[tag=rightFoot] beta -7000

scoreboard players set @s[tag=chair] beta 45000

function nge:core/anim/set_pose

execute on passengers as @s run function nge:core/anim/neutral