data merge entity @s[tag=chair] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420000}},height:10,width:5}
data merge entity @s[tag=chair] {transformation:{left_rotation:[0.0f,0.707f,0.0f,0.707f],right_rotation:[0.0f,0.0f,0.388f,0.922f],scale:[2.0f,2.0f,2.0f]}}
data merge entity @s[tag=chair] {transformation:{translation:[0.0f,1.6f,-0.3f]}}

data merge entity @s[tag=interior] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420001}},height:10,width:5}
data merge entity @s[tag=interior] {transformation:{translation:[0.0f,-1.7f,-0.8f],scale:[4.0f,4.0f,4.0f]}}

data merge entity @s[tag=chest] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420002}},height:15,width:15}
data merge entity @s[tag=chest] {transformation:{translation:[0.0f,3.0f,-2.2f],scale:[10.0f,10.0f,10.0f]}}

data merge entity @s[tag=torso] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420003}},height:15,width:15}
data merge entity @s[tag=torso] {transformation:{translation:[0.0f,-8.3f,1.8f],scale:[5.0f,5.0f,5.0f]},Rotation:[0.0f,22.5f]}

data merge entity @s[tag=leftArm] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420004}},height:15,width:15}
data merge entity @s[tag=leftArm] {transformation:{translation:[8.5f,2.3f,-1.8f],scale:[10.0f,10.0f,10.0f]}}

data merge entity @s[tag=rightArm] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420005}},height:15,width:15}
data merge entity @s[tag=rightArm] {transformation:{translation:[-8.5f,2.3f,-1.8f],scale:[10.0f,10.0f,10.0f]}}

data merge entity @s[tag=leftForearm] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420006}},height:15,width:15}
data merge entity @s[tag=leftForearm] {transformation:{scale:[10.0f,10.0f,10.0f]}}

data merge entity @s[tag=rightForearm] {item:{id:"name_tag",Count:1b,tag:{CustomModelData:420007}},height:15,width:15}
data merge entity @s[tag=rightForearm] {transformation:{scale:[10.0f,10.0f,10.0f]}}


ride @s[tag=chair] mount @e[tag=new,tag=root,limit=1,sort=nearest]
ride @s[tag=interior] mount @e[tag=new,tag=root,limit=1,sort=nearest]
ride @s[tag=chest] mount @e[tag=new,tag=root,limit=1,sort=nearest]
ride @s[tag=torso] mount @e[tag=new,tag=root,limit=1,sort=nearest]
ride @s[tag=leftArm] mount @e[tag=new,tag=chest,limit=1,sort=nearest]
ride @s[tag=rightArm] mount @e[tag=new,tag=chest,limit=1,sort=nearest]
ride @s[tag=leftForearm] mount @e[tag=new,tag=leftArm,limit=1,sort=nearest]
ride @s[tag=rightForearm] mount @e[tag=new,tag=rightArm,limit=1,sort=nearest]
