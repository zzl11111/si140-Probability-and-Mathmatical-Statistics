import numpy as np
import random
import matplotlib
import matplotlib.pyplot as plt
import math
import sys
s1win=0
s2win=0
s3win=0
n=4

for i in range(0,1000000):
    a=np.random.randint(1,4)
    b=np.random.randint(1,4)
    if(a==4):
        s1win+=1
print(s1win)