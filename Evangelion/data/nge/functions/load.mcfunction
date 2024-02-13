# Teams
team add evaPart
team join evaPart @a
team modify evaPart collisionRule never
team modify evaPart seeFriendlyInvisibles false

scoreboard objectives add m0 dummy
scoreboard objectives add m1 dummy
scoreboard objectives add m2 dummy
scoreboard objectives add water dummy
scoreboard objectives add id dummy
scoreboard objectives add rot0 dummy
scoreboard objectives add rot1 dummy
# out = cos(angle) or sin(angle)
scoreboard objectives add angle dummy
scoreboard objectives add out dummy

scoreboard objectives add con dummy
scoreboard players set C2 con 2

scoreboard players set idStack id 0
execute as @e[scores={id=1..},tag=main] store result score idStack id run scoreboard players get @s id

playsound entity.player.levelup master @a ~ ~ ~ 1 1 1
tellraw @a {"text": "Evangelion datapack loaded succesfully", "color": "#9900FF"}

# THE HOLY FOKIN GRAIL OF COMMANDS
# execute at @a as @e if score @s id = @p id run ...