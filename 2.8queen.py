print ("Rithik.C.K(192110103)")
print ("Enter the number of queens")
n = int(input())

board = [[0]*n for _ in range(n)]

def attack(i, j):
    for k in range(0,n):
        if board[i][k]==1 or board[k][j]==1:
            return True
    for k in range(0,n):
        for l in range(0,n):
            if (k+l==i+j) or (k-l==i-j):
                if board[k][l]==1:
                    return True
    return False

def N_queens(n1):
    if n1==0:
        return True
    for i in range(0,n):
        for j in range(0,n):
            if (not(attack(i,j))) and (board[i][j]!=1):
                board[i][j] = 1
                if N_queens(n1-1)==True:
                    return True
                board[i][j] = 0

    return False

N_queens(n)
for i in board:
    print (i)
