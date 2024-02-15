import math 

dx = 3
dy = -13.25
dz = 0

def calc(n):
    return round(n*180/math.pi,3)

l = round(math.sqrt(dx*dx + dy*dy + dz*dz),3)
dr0 = calc(math.acos(dy / math.sqrt(dy*dy + dz*dz)))
dr1 = calc(math.acos(-dx / l))

print(l)
print(dr0, dr1)
