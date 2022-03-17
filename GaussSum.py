print ("Gaußsche Summenformel: n * (n + 1) / 2")
print("Bitte geben Sie die letzte Zahl der zu summierenden Zahlenmenge an (z.B. 10 wenn 1+2+3...+10 summiert werden sollen): ")
def GSum():
    n = int(input())
    s = n * (n + 1) / 2
    print(int(s))
GSum()
