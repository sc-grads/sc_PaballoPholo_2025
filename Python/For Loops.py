#For loops

for i in [5,4,3,2,1] :
    print(i)
print ("Blastoff!")

friends = ['Joseph', 'Peter', 'April']
for friend in friends :
    print("Happy new year", friend)
print('Done!')

#Finding the largest number

largest_so_far = -1
print("Before",largest_so_far)

for the_num in [9,41,12,3,74,15]:
    if the_num > largest_so_far:
        largest_so_far = the_num
    print(largest_so_far,the_num)
    
print('After',largest_so_far)