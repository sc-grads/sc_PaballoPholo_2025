for i in range(3):
    print(f'Iteration: {i}')
    break
else:
    print('Success!') #This ensures that it prints only when the loop condition is met

for i in range(3):
    continue
else:
    print('Success!')