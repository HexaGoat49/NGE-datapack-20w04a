summon minecraft:giant ~ ~ ~ {Silent:1b,PersistenceRequired:1b,Tags:["main","evaPart","new"],CustomName:main}
summon minecraft:giant ~ ~ ~ {Silent:1b,PersistenceRequired:1b,Tags:["chair","evaPart","new"]}
summon interaction ~ ~ ~ {width:4.0f,height:10.0f,Tags:["clicker","evaPart","new"]}

# Id asigning
scoreboard players set @e[tag=new] id 0
scoreboard players add idStack id 1
execute as @e[tag=new] store result score @s id run scoreboard players get idStack id

team join evaPart @e[tag=new]
effect give @e[tag=new] invisibility infinite 1 true
effect give @e[tag=new] regeneration infinite 255 true
effect give @e[tag=new] resistance infinite 255 true

attribute @e[tag=main,limit=1,sort=nearest,tag=new] generic.scale base set 4.5
attribute @e[tag=main,limit=1,sort=nearest,tag=new] generic.step_height base set 8
attribute @e[tag=chair,limit=1,sort=nearest,tag=new] generic.scale base set 0.0625
attribute @e[tag=chair,limit=1,sort=nearest,tag=new] generic.max_health base set 1

tag @e remove new
