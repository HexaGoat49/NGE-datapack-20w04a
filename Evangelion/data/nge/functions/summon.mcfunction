summon minecraft:giant ~ ~ ~ {Silent:1b,PersistenceRequired:1b,Tags:["main","evaPart","new"]}
summon minecraft:giant ~ ~ ~ {Silent:1b,PersistenceRequired:1b,Tags:["chair","evaPart","new","offset"]}
summon interaction ~ ~ ~ {width:4.0f,height:10.0f,Tags:["clicker","evaPart","new","offset"]}
summon armor_stand ~ ~ ~ {Tags:["chairModel","evaPart","new","model","offset"]}
summon item_display ~ ~ ~ {Tags:["chairDisplay","evaPart","new","display"]}

scoreboard players set @e[tag=new] id 0
scoreboard players add idStack id 1
execute as @e[tag=new] store result score @s id run scoreboard players get idStack id

team join evaPart @e[tag=new]
effect give @e[tag=new] fire_resistance infinite 1 true
effect give @e[tag=new] invisibility infinite 1 true
effect give @e[tag=new] regeneration infinite 255 true
effect give @e[tag=new] resistance infinite 255 true
execute as @e[tag=new,tag=evaPart,type=armor_stand] run data merge entity @s {NoGravity:1b,Silent:1b,Invisible:1b,DisabledSlots:2039583}

ride @e[tag=new,tag=chairDisplay,limit=1,sort=nearest] mount @e[tag=new,tag=chairModel,limit=1,sort=nearest]
data merge entity @e[limit=1,sort=nearest,tag=new,tag=chairDisplay] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420000}},height:10,width:5}
data merge entity @e[limit=1,sort=nearest,tag=new,tag=chairDisplay] {transformation:{left_rotation:[0.0f,0.707f,0.0f,0.707f],right_rotation:[0.0f,0.0f,0.388f,0.922f],scale:[2.0f,2.0f,2.0f]}}
data merge entity @e[limit=1,sort=nearest,tag=new,tag=chairDisplay] {transformation:{translation:[0.0f,1.7f,-0.1f]}}

execute as @e[tag=evaPart,tag=new,type=item_display] run data merge entity @s {teleport_duration:5}

attribute @e[tag=main,limit=1,sort=nearest,tag=new] generic.scale base set 4.5
attribute @e[tag=main,limit=1,sort=nearest,tag=new] generic.step_height base set 8
attribute @e[tag=chair,limit=1,sort=nearest,tag=new] generic.scale base set 0.0625
attribute @e[tag=chair,limit=1,sort=nearest,tag=new] generic.max_health base set 1

scoreboard players set @e[tag=chair,tag=new] offset 50
scoreboard players set @e[tag=chairModel,tag=new] offset 48
scoreboard players set @e[tag=clicker,tag=new] offset 45

tag @e remove new