summon minecraft:giant ~ ~ ~ {Silent:1b,PersistenceRequired:1b,Tags:["main","evaPart","new"]}
summon minecraft:giant ~ ~ ~ {Silent:1b,PersistenceRequired:1b,Tags:["chair","evaPart","new"]}
summon interaction ~ ~ ~ {width:4.0f,height:10.0f,Tags:["clicker","evaPart","new"]}

summon armor_stand ~ ~ ~ {Tags:["chairModel","evaPart","new"]}
summon item_display ~ ~ ~ {Tags:["interiorDisplay","evaPart","new"]}
summon item_display ~ ~ ~ {Tags:["chairDisplay","evaPart","new"]}
summon item_display ~ ~ ~ {Tags:["chestDisplay","evaPart","new"]}
summon item_display ~ ~ ~ {Tags:["torsoDisplay","evaPart","new"]}
summon item_display ~ ~ ~ {Tags:["leftArmDisplay","evaPart","new"]}
summon item_display ~ ~ ~ {Tags:["rightArmDisplay","evaPart","new"]}

scoreboard players set @e[tag=new] id 0
scoreboard players add idStack id 1
execute as @e[tag=new] store result score @s id run scoreboard players get idStack id

team join evaPart @e[tag=new]
effect give @e[tag=new] invisibility infinite 1 true
execute as @e[tag=new] run data merge entity @s {Invulnerable:1b}
execute as @e[tag=new,type=armor_stand] run data merge entity @s {NoGravity:1b,Silent:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=new,type=item_display] run data merge entity @s {teleport_duration:5}

data merge entity @e[limit=1,sort=nearest,tag=new,tag=chairDisplay] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420000}},height:10,width:5}
data merge entity @e[limit=1,sort=nearest,tag=new,tag=chairDisplay] {transformation:{left_rotation:[0.0f,0.707f,0.0f,0.707f],right_rotation:[0.0f,0.0f,0.388f,0.922f],scale:[2.0f,2.0f,2.0f]}}
data merge entity @e[limit=1,sort=nearest,tag=new,tag=chairDisplay] {transformation:{translation:[0.0f,1.6f,-0.3f]}}

data merge entity @e[limit=1,sort=nearest,tag=new,tag=interiorDisplay] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420001}},height:10,width:5}
data merge entity @e[limit=1,sort=nearest,tag=new,tag=interiorDisplay] {transformation:{translation:[0.0f,-1.7f,-0.8f],scale:[4.0f,4.0f,4.0f]}}

data merge entity @e[limit=1,sort=nearest,tag=new,tag=chestDisplay] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420002}},height:15,width:15}
data merge entity @e[limit=1,sort=nearest,tag=new,tag=chestDisplay] {transformation:{translation:[0.0f,3.0f,-2.2f],scale:[10.0f,10.0f,10.0f]}}

data merge entity @e[limit=1,sort=nearest,tag=new,tag=torsoDisplay] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420003}},height:15,width:15}
data merge entity @e[limit=1,sort=nearest,tag=new,tag=torsoDisplay] {transformation:{translation:[0.0f,-8.3f,1.8f],scale:[5.0f,5.0f,5.0f]},Rotation:[0.0f,22.5f]}

data merge entity @e[limit=1,sort=nearest,tag=new,tag=leftArmDisplay] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420004}},height:15,width:15}
data merge entity @e[limit=1,sort=nearest,tag=new,tag=leftArmDisplay] {transformation:{translation:[10.0f,-2.2f,-1.8f],scale:[5.0f,5.0f,5.0f]}}

data merge entity @e[limit=1,sort=nearest,tag=new,tag=rightArmDisplay] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420005}},height:15,width:15}
data merge entity @e[limit=1,sort=nearest,tag=new,tag=rightArmDisplay] {transformation:{translation:[-10.0f,-2.2f,-1.8f],scale:[5.0f,5.0f,5.0f]}}

ride @e[tag=new,tag=chairDisplay,limit=1,sort=nearest] mount @e[tag=new,tag=chairModel,limit=1,sort=nearest]
ride @e[tag=new,tag=interiorDisplay,limit=1,sort=nearest] mount @e[tag=new,tag=chairDisplay,limit=1,sort=nearest]
ride @e[tag=new,tag=chestDisplay,limit=1,sort=nearest] mount @e[tag=new,tag=interiorDisplay,limit=1,sort=nearest]
ride @e[tag=new,tag=torsoDisplay,limit=1,sort=nearest] mount @e[tag=new,tag=chestDisplay,limit=1,sort=nearest]

ride @e[tag=new,tag=leftArmDisplay,limit=1,sort=nearest] mount @e[tag=new,tag=torsoDisplay,limit=1,sort=nearest]
ride @e[tag=new,tag=rightArmDisplay,limit=1,sort=nearest] mount @e[tag=new,tag=torsoDisplay,limit=1,sort=nearest]

attribute @e[tag=main,limit=1,sort=nearest,tag=new] generic.scale base set 4.5
attribute @e[tag=main,limit=1,sort=nearest,tag=new] generic.step_height base set 8
attribute @e[tag=chair,limit=1,sort=nearest,tag=new] generic.scale base set 0.0625
attribute @e[tag=chair,limit=1,sort=nearest,tag=new] generic.max_health base set 1

tag @e remove new
