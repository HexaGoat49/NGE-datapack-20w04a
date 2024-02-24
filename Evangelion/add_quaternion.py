import numpy as np
import math
 
def quaternion_multiply(Q0,Q1):

    w0 = Q0[0]
    x0 = Q0[1]
    y0 = Q0[2]
    z0 = Q0[3]
     
    w1 = Q1[0]
    x1 = Q1[1]
    y1 = Q1[2]
    z1 = Q1[3]
     
    Q0Q1_w = w0 * w1 - x0 * x1 - y0 * y1 - z0 * z1
    Q0Q1_x = w0 * x1 + x0 * w1 + y0 * z1 - z0 * y1
    Q0Q1_y = w0 * y1 - x0 * z1 + y0 * w1 + z0 * x1
    Q0Q1_z = w0 * z1 + x0 * y1 - y0 * x1 + z0 * w1

    final_quaternion = np.array([Q0Q1_w, Q0Q1_x, Q0Q1_y, Q0Q1_z])
    return final_quaternion

a0 = 45
b0 = 30

a1 = 22.5
b1 = 45

def quat(a, b):
    return [math.cos(a) * math.cos(b), math.cos(a) * math.sin(b), math.sin(a) * math.cos(b), -1 * math.sin(a) * math.sin(b)]

n = math.pi / 360

Q0 = quat(a0 * n, b0 * n)
Q1 = quat(a1 * n, b1 * n)

Q = quaternion_multiply(Q0, Q1)

final = "["
final += str(round(Q[1], 3)) + "f,"
final += str(round(Q[2], 3)) + "f,"
final += str(round(Q[3], 3)) + "f,"

final += str(round(Q[0], 3)) + "f]"

print(final)

alpha = 2 * math.atan(Q[1] / Q[3])
beta = 2 * math.atan(Q[0] / Q[3])

print(alpha / (n*2), beta / (2*n))

