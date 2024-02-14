summon minecraft:giant ~ ~ ~ {Silent:1b,PersistenceRequired:1b,Tags:["main","evaPart","new"]}
summon minecraft:giant ~ ~ ~ {Silent:1b,PersistenceRequired:1b,Tags:["vehicle","evaPart","new"]}
summon interaction ~ ~ ~ {width:4.0f,height:10.0f,Tags:["clicker","evaPart","new"]}
summon armor_stand ~ ~ ~ {Tags:["root","evaPart","new"]}
summon armor_stand ~ ~ ~ {Tags:["rotator","evaPart","new"]}
summon armor_stand ~ ~ ~ {Tags:["point","evaPart","new"]}

summon item_display ~ ~ ~ {Tags:["interior","evaPart","new"]}
summon item_display ~ ~ ~ {Tags:["chair","evaPart","new"]}
summon item_display ~ ~ ~ {Tags:["chest","evaPart","new"]}
summon item_display ~ ~ ~ {Tags:["torso","evaPart","new"]}
summon item_display ~ ~ ~ {Tags:["leftArm","evaPart","new","child"]}
summon item_display ~ ~ ~ {Tags:["rightArm","evaPart","new","child"]}
summon item_display ~ ~ ~ {Tags:["leftForearm","evaPart","new","grandson"]}
summon item_display ~ ~ ~ {Tags:["rightForearm","evaPart","new","grandson"]}

scoreboard players set @e[tag=new] id 0
scoreboard players add idStack id 1
execute as @e[tag=new] store result score @s id run scoreboard players get idStack id

team join evaPart @e[tag=new]
effect give @e[tag=new] invisibility infinite 1 true
execute as @e[tag=new] run data merge entity @s {Invulnerable:1b}
execute as @e[tag=new,type=armor_stand] run data merge entity @s {NoGravity:1b,Silent:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=new,type=item_display] run data merge entity @s {teleport_duration:5}

execute as @e[tag=new,type=item_display] run function nge:base/summon/set_data
execute as @e[tag=new,tag=grandson] run function nge:base/summon/set_sub_childs

attribute @e[tag=main,limit=1,sort=nearest,tag=new] generic.scale base set 4.5
attribute @e[tag=main,limit=1,sort=nearest,tag=new] generic.step_height base set 8
attribute @e[tag=vehicle,limit=1,sort=nearest,tag=new] generic.scale base set 0.0625
attribute @e[tag=vehicle,limit=1,sort=nearest,tag=new] generic.max_health base set 1

tag @e remove new
