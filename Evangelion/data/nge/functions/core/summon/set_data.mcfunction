data merge entity @s {item:{id:"name_tag",Count:1b,tag:{CustomModelData:0}},view_range:256.0f}

data merge entity @s[tag=chair] {transformation:{left_rotation:[0.0f,0.707f,0.0f,0.707f],right_rotation:[0.0f,0.0f,0.388f,0.922f]}}
data merge entity @s[tag=chair] {transformation:{translation:[0.0f,1.6f,-0.3f],scale:[2.0f,2.0f,2.0f]}}
data merge entity @s[tag=interior] {transformation:{translation:[0.0f,-1.7f,-0.8f],scale:[4.0f,4.0f,4.0f]}}
data merge entity @s[tag=chest] {transformation:{translation:[0.0f,3.0f,-2.2f],scale:[10.0f,10.0f,10.0f]}}
data merge entity @s[tag=torso] {transformation:{translation:[0.0f,-8.3f,1.8f],scale:[5.0f,5.0f,5.0f]}}

data merge entity @s[tag=leftArm] {transformation:{translation:[8.5f,2.3f,-1.8f],scale:[10.0f,10.0f,10.0f]}}
data merge entity @s[tag=rightArm] {transformation:{translation:[-8.5f,2.3f,-1.8f],scale:[10.0f,10.0f,10.0f]}}
data merge entity @s[tag=leftForearm] {transformation:{scale:[10.0f,10.0f,10.0f]}}
data merge entity @s[tag=rightForearm] {transformation:{scale:[10.0f,10.0f,10.0f]}}

data merge entity @s[tag=leftLeg] {transformation:{translation:[4.4f,-13.4f,3.2f],scale:[10.0f,10.0f,10.0f]}}
data merge entity @s[tag=rightLeg] {transformation:{translation:[-4.4f,-13.4f,3.2f],scale:[10.0f,10.0f,10.0f]}}
data merge entity @s[tag=leftCalf] {transformation:{scale:[20.0f,20.0f,20.0f]}}
data merge entity @s[tag=rightCalf] {transformation:{scale:[20.0f,20.0f,20.0f]}}


data modify entity @s[tag=chest] item.tag.CustomModelData set value 490100
data modify entity @s[tag=torso] item.tag.CustomModelData set value 490101

data modify entity @s[tag=leftArm] item.tag.CustomModelData set value 490102
data modify entity @s[tag=rightArm] item.tag.CustomModelData set value 490103
data modify entity @s[tag=leftForearm] item.tag.CustomModelData set value 490104
data modify entity @s[tag=rightForearm] item.tag.CustomModelData set value 490105

data modify entity @s[tag=leftLeg] item.tag.CustomModelData set value 490106
data modify entity @s[tag=rightLeg] item.tag.CustomModelData set value 490107
data modify entity @s[tag=leftCalf] item.tag.CustomModelData set value 490108
data modify entity @s[tag=rightCalf] item.tag.CustomModelData set value 490109

data modify entity @s[tag=chair] item.tag.CustomModelData set value 491000
data modify entity @s[tag=interior] item.tag.CustomModelData set value 491001


ride @s[tag=chair] mount @e[tag=new,tag=root,limit=1,sort=nearest]
ride @s[tag=interior] mount @e[tag=new,tag=root,limit=1,sort=nearest]
ride @s[tag=chest] mount @e[tag=new,tag=root,limit=1,sort=nearest]
ride @s[tag=torso] mount @e[tag=new,tag=root,limit=1,sort=nearest]

ride @s[tag=leftArm] mount @e[tag=new,tag=chest,limit=1,sort=nearest]
ride @s[tag=rightArm] mount @e[tag=new,tag=chest,limit=1,sort=nearest]
ride @s[tag=leftForearm] mount @e[tag=new,tag=leftArm,limit=1,sort=nearest]
ride @s[tag=rightForearm] mount @e[tag=new,tag=rightArm,limit=1,sort=nearest]

ride @s[tag=leftLeg] mount @e[tag=new,tag=torso,limit=1,sort=nearest]
ride @s[tag=rightLeg] mount @e[tag=new,tag=torso,limit=1,sort=nearest]
ride @s[tag=leftCalf] mount @e[tag=new,tag=leftLeg,limit=1,sort=nearest]
ride @s[tag=rightCalf] mount @e[tag=new,tag=rightLeg,limit=1,sort=nearest]