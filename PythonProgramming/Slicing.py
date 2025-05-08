#Here we use indexing, we start counting from 0
#In [0:3] - 3 is not included, only elements in spaces 0,1,2 will be retrieved

numbers: list[int] = [1, 2, 3, 4, 5, 6]
print (numbers [0:3]) #This will get the first 3 elements
print (numbers [3:6]) #This will get the last 3 elements

print (numbers [::-1])#Gives us our list reversed
print (numbers [0:3:2])#Last number is the step, it must take 2 steps from place[0] and only return what comes after the steps


#NB: Don't try to modify a list while it's looping