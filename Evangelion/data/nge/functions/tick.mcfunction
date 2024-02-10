# POSITIONATE #
# Positionate the pilot
execute at @e[tag=main] as @e[tag=chair] if score @s id = @e[tag=main,limit=1,sort=nearest] id run tp @s ~ ~50 ~
execute at @e[tag=main] as @e[tag=clicker] if score @s id = @e[tag=main,limit=1,sort=nearest] id run tp @s ~ ~45 ~
# Ride of player falls
execute as @a[scores={id=1..},predicate=nge:is_not_riding] at @s run function nge:ride

# TEMP
execute as @e[tag=main] store result score @s m0 run data get entity @s Motion[0] 10000
execute as @a[tag=main] store result score @s m2 run data get entity @s Motion[2] 10000


# MOTION #
# Transfer motion to scores
execute as @a store result score @s m0 run data get entity @s Motion[0] 10000
execute as @a store result score @s m2 run data get entity @s Motion[2] 10000
execute as @e[tag=main] store result score @s m1 run data get entity @s Motion[1] 10000
# Transfer the pilot motion to main entity
execute as @e[tag=main,predicate=nge:can_run] run function nge:movement/motion

# WATER #
# Update the water counter and check the water quantity
scoreboard players remove @e[tag=main] water 1
execute as @e[tag=main,scores={water=..-21}] at @s run function nge:water/check
execute as @e[tag=main,scores={water=..-6},nbt={OnGround:0b}] at @s run function nge:water/check
# Change the vertical motion for the main entity if it is on water
execute as @e[tag=main,tag=inWater] run data modify entity @s Motion[1] set value -0.7d

