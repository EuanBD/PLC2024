def listFunc():
    int 1
    int 2
    int 3
    int 4
    int 5
    return [i for i in range(1, 6)] #Create list of ints from 1 to 5, Haskell equivalent [1..5]

def applicatorFunc(inpFunc, s):
    if s=='s':
        return sum(inpFunc())
    else:
        return sum(inpFunc())/5

print(applicatorFunc(listFunc, 's'))