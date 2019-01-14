from sys import argv
import random
import os
import subprocess

# pass the frequency for specific commands
# for example: touch should be higher frequency than mkdir
def random_chance(chance):
    # maybe make sure chance is a float <= 1
    if random.random() < chance:
        return True
    else:
        return False

def swap(word):
    letters = list(word)
    wordlen = len(letters)
    try:
        index = random.randrange(wordlen)
    except ValueError:
        # this is equivalent to pressing enter
        print()
    try:
        letters[index], letters[index+1] = letters[index+1], letters[index]
    except IndexError:
        letters[index], letters[index-1] = letters[index-1], letters[index]
    word = ''.join(letters)  
    return word


def typo(args, chance):
    # add frequency to arg[0]
    args = args[1:]
    arg_num = len(args)
    # TODO: refactor out index
    try:
        index = random.randrange(arg_num)
    except ValueError:
        # this is equivalent to pressing enter
        return 0
    if random_chance(chance):
        args[index] = swap(args[index])
    command = ' '.join(args)
    # print(command)
    os.system(command)
    # print(subprocess.Popen([".", "cd", ".."]))

print("Hello, python here!")
print(argv)
typo(argv, 1)
# typo(argv, 0)