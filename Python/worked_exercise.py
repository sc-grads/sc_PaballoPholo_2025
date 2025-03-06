#Worked exercise

num = 0
tot = 0.0

while True :
    sval = input('Enter a number: ')
    if sval == 'done' :
        break
    try:
        fval = float(sval)
    except:
        print('Invalid format')
        continue
    
    num = num + 1
    tot =  tot + 1
    
print(tot,num,tot/num)