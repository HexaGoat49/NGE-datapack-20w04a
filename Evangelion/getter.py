import math 

dx = 3
dy = -13.25
dz = 0

def calc(n):
    return round(n*180/math.pi,3)

l = round(math.sqrt(dx*dx + dy*dy + dz*dz),3)
dr0 = calc(math.asin(dx/math.sqrt(dz*dz + dx*dx)))
dr1 = calc(math.asin(dy/(l*math.sqrt(l*l - dx*dx))))

print(l)
print(dr0, dr1)
