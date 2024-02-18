import math 

dy = -13
dz = -2

pLen = round(math.sqrt(dy*dy + dz*dz) * 100)
if dz == 0:
    dz = 0.0001
pRot = round(math.atan(dy / dz) * 18000 / math.pi)

print(pLen, pRot)
