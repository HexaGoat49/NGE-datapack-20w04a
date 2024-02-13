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
summon item_display ~ ~ ~ {Tags:["leftArm","evaPart","new"]}
summon item_display ~ ~ ~ {Tags:["rightArm","evaPart","new"]}

scoreboard players set @e[tag=new] id 0
scoreboard players add idStack id 1
execute as @e[tag=new] store result score @s id run scoreboard players get idStack id

team join evaPart @e[tag=new]
effect give @e[tag=new] invisibility infinite 1 true
execute as @e[tag=new] run data merge entity @s {Invulnerable:1b}
execute as @e[tag=new,type=armor_stand] run data merge entity @s {NoGravity:1b,Silent:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=new,type=item_display] run data merge entity @s {teleport_duration:5}

data merge entity @e[limit=1,sort=nearest,tag=new,tag=chair] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420000}},height:10,width:5}
data merge entity @e[limit=1,sort=nearest,tag=new,tag=chair] {transformation:{left_rotation:[0.0f,0.707f,0.0f,0.707f],right_rotation:[0.0f,0.0f,0.388f,0.922f],scale:[2.0f,2.0f,2.0f]}}
data merge entity @e[limit=1,sort=nearest,tag=new,tag=chair] {transformation:{translation:[0.0f,1.6f,-0.3f]}}

data merge entity @e[limit=1,sort=nearest,tag=new,tag=interior] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420001}},height:10,width:5}
data merge entity @e[limit=1,sort=nearest,tag=new,tag=interior] {transformation:{translation:[0.0f,-1.7f,-0.8f],scale:[4.0f,4.0f,4.0f]}}

data merge entity @e[limit=1,sort=nearest,tag=new,tag=chest] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420002}},height:15,width:15}
data merge entity @e[limit=1,sort=nearest,tag=new,tag=chest] {transformation:{translation:[0.0f,3.0f,-2.2f],scale:[10.0f,10.0f,10.0f]}}

data merge entity @e[limit=1,sort=nearest,tag=new,tag=torso] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420003}},height:15,width:15}
data merge entity @e[limit=1,sort=nearest,tag=new,tag=torso] {transformation:{translation:[0.0f,-8.3f,1.8f],scale:[5.0f,5.0f,5.0f]},Rotation:[0.0f,22.5f]}

data merge entity @e[limit=1,sort=nearest,tag=new,tag=leftArm] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420004}},height:15,width:15}
data merge entity @e[limit=1,sort=nearest,tag=new,tag=leftArm] {transformation:{translation:[8.5f,2.3f,-1.8f],scale:[10.0f,10.0f,10.0f]}}

data merge entity @e[limit=1,sort=nearest,tag=new,tag=rightArm] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420005}},height:15,width:15}
data merge entity @e[limit=1,sort=nearest,tag=new,tag=rightArm] {transformation:{translation:[-8.5f,2.3f,-1.8f],scale:[10.0f,10.0f,10.0f]}}

ride @e[tag=new,tag=chair,limit=1,sort=nearest] mount @e[tag=new,tag=root,limit=1,sort=nearest]
ride @e[tag=new,tag=interior,limit=1,sort=nearest] mount @e[tag=new,tag=root,limit=1,sort=nearest]
ride @e[tag=new,tag=chest,limit=1,sort=nearest] mount @e[tag=new,tag=root,limit=1,sort=nearest]
ride @e[tag=new,tag=torso,limit=1,sort=nearest] mount @e[tag=new,tag=root,limit=1,sort=nearest]
ride @e[tag=new,tag=leftArm,limit=1,sort=nearest] mount @e[tag=new,tag=chest,limit=1,sort=nearest]
ride @e[tag=new,tag=rightArm,limit=1,sort=nearest] mount @e[tag=new,tag=chest,limit=1,sort=nearest]

attribute @e[tag=main,limit=1,sort=nearest,tag=new] generic.scale base set 4.5
attribute @e[tag=main,limit=1,sort=nearest,tag=new] generic.step_height base set 8
attribute @e[tag=vehicle,limit=1,sort=nearest,tag=new] generic.scale base set 0.0625
attribute @e[tag=vehicle,limit=1,sort=nearest,tag=new] generic.max_health base set 1

tag @e remove new
