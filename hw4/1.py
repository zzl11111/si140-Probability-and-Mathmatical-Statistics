sum=2
p=1
for  i in range(3,367):
 p=p*(1-(i-2)/365)
 sum+=p
s=0 
p=1
for i in range(2,367):
    p=p*(1-(i-2)/365)
    s+=2*(i-1)*p
v=sum-sum*sum+s
print(v)