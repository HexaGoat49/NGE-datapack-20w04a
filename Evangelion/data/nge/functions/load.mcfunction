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
scoreboard objectives add offset dummy
scoreboard objectives add yPos dummy

scoreboard players set idStack id 0
execute as @e[scores={id=1..},tag=main] store result score idStack id run scoreboard players get @s id

playsound entity.player.levelup master @a ~ ~ ~ 1 1 1
tellraw @a {"text": "Evangelion datapack loaded succesfully", "color": "#9900FF"}

# THE HOLY FOKIN GRAIL OF COMMANDS
# execute at @a as @e if score @s id = @p id run ...