import math 

dx = -12
dy = -17
dz = 15

l = 0
dr0 = 0
dr1 = 0

C = 180/math.pi 

l = round(math.sqrt(dx*dx + dy*dy + dz*dz),3)
dr0 = round(C*math.asin(dx/math.sqrt(dx*dx + dz*dz)),3)
dr1 = round(C*math.asin(dy/l),3)

print(l)
print(dr0, dr1)
