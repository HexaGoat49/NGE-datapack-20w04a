data merge entity @s {item:{id:"purple_dye",Count:1b,tag:{CustomModelData:0}},view_range:256.0f}
data merge entity @s {transformation:{scale:[10.0f,10.0f,10.0f]}}

data modify entity @s[tag=chair] item.id set value "name_tag"
data modify entity @s[tag=interior] item.id set value "name_tag"

data modify entity @s[tag=chair] transformation.scale set value [2.0f,2.0f,2.0f]
data modify entity @s[tag=interior] transformation.scale set value [4.0f,4.0f,4.0f]

data modify entity @s[tag=chair] item.tag.CustomModelData set value 100
data modify entity @s[tag=interior] item.tag.CustomModelData set value 101

data modify entity @s[tag=chest] item.tag.CustomModelData set value 100
data modify entity @s[tag=torso] item.tag.CustomModelData set value 101
data modify entity @s[tag=leftArm] item.tag.CustomModelData set value 102
data modify entity @s[tag=rightArm] item.tag.CustomModelData set value 103
data modify entity @s[tag=leftForearm] item.tag.CustomModelData set value 104
data modify entity @s[tag=rightForearm] item.tag.CustomModelData set value 104
data modify entity @s[tag=leftLeg] item.tag.CustomModelData set value 105
data modify entity @s[tag=rightLeg] item.tag.CustomModelData set value 106
data modify entity @s[tag=leftCalf] item.tag.CustomModelData set value 107
data modify entity @s[tag=rightCalf] item.tag.CustomModelData set value 107

ride @s[tag=chair] mount @e[tag=new,tag=root,limit=1]
ride @s[tag=interior] mount @e[tag=new,tag=root,limit=1]
ride @s[tag=chest] mount @e[tag=new,tag=root,limit=1]
ride @s[tag=torso] mount @e[tag=new,tag=root,limit=1]
ride @s[tag=leftArm] mount @e[tag=new,tag=chest,limit=1]
ride @s[tag=rightArm] mount @e[tag=new,tag=chest,limit=1]
ride @s[tag=leftForearm] mount @e[tag=new,tag=leftArm,limit=1]
ride @s[tag=rightForearm] mount @e[tag=new,tag=rightArm,limit=1]
ride @s[tag=leftLeg] mount @e[tag=new,tag=torso,limit=1]
ride @s[tag=rightLeg] mount @e[tag=new,tag=torso,limit=1]
ride @s[tag=leftCalf] mount @e[tag=new,tag=leftLeg,limit=1]
ride @s[tag=rightCalf] mount @e[tag=new,tag=rightLeg,limit=1]