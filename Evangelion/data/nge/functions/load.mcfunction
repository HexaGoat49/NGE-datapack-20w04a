# Teams
team add evaPart
team join evaPart @a
team modify evaPart collisionRule never
team modify evaPart seeFriendlyInvisibles false

scoreboard objectives add water dummy
scoreboard objectives add id dummy
# Motion
scoreboard objectives add m0 dummy
scoreboard objectives add m1 dummy
scoreboard objectives add m2 dummy
# Display rotation
scoreboard objectives add rot0 dummy
scoreboard objectives add rot1 dummy
# Maths
scoreboard objectives add angle dummy
scoreboard objectives add out dummy
scoreboard objectives add math dummy
# Delta rotation and len for grandson entities
scoreboard objectives add len dummy
scoreboard objectives add dr0 dummy
scoreboard objectives add dr1 dummy
# Origin rotation
scoreboard objectives add alpha dummy
scoreboard objectives add beta dummy
# Translation
scoreboard objectives add tx dummy
scoreboard objectives add ty dummy
scoreboard objectives add tz dummy
# Deltas
scoreboard objectives add dx dummy
scoreboard objectives add dy dummy
scoreboard objectives add dz dummy
# Global values
scoreboard objectives add global dummy
scoreboard players set G2 global 2
scoreboard players set G1000 global 1000

scoreboard players set idStack id 0
execute as @e[scores={id=1..},tag=main] store result score idStack id run scoreboard players get @s id

playsound entity.player.levelup master @a ~ ~ ~ 1 1 1
tellraw @a {"text": "Evangelion datapack loaded succesfully", "color": "#9900FF"}

# THE HOLY FOKIN GRAIL OF COMMANDS
# execute at @a as @e if score @s id = @p id run ...