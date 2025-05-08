import random
import sys

# STEP 1: STARTING INFORMATION
print('Welcome to RPS! ')
moves: dict = {'rock': 'R', 'paper ': 'P', 'scissors': 'S'}
valid_moves: list[str] = list(moves.keys())

# STEP 2: INFINITE LOOP
while True:
    user_move: str = input('Rock, paper, or scissors? >> ').lower()
    if user_move == 'exit':
        print('Thanks for playing! ')
        sys.exit()
    if user_move not in valid_moves:
        print('Invalid move. . . ')
        continue
    #AI decides
    ai_move: str = random.choice(valid_moves)

    print('----')
    print(f'You: {moves[user_move]}')
    print(f'AI: {moves[ai_move]}')
    print('----')

    #Check moves
    if user_move == ai_move:
        print('It is a tie! ')
    elif user_move == 'rock' and ai_move == 'scissors':
        print('You win! ')
    elif user_move == 'scissors' and ai_move == 'paper':
        print('You win! ')
    elif user_move == 'paper' and ai_move == 'rock':
        print('You win! ')
    else:
        print('AI wins ... ')
