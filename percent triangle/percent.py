def Grundwert():
    print("Bitte den Prozentwert eingeben: ")
    W = int(input())
    # print(W.isnumeric())
    print("Bitte den Prozentsatz eingeben: ")
    p = int(input())
    p = p/100
    G = W/p
    print("der Grundwert beträgt:\n ", G)
    # print(G)
    print("Was möchten Sie als nächstes Berechnen?")
    Eingabefunktion()

def Prozentwert():
    print("Bitte Grundwert eingeben: ")
    G = int(input())
    print("Bitte den Prozentsatz eingeben: ")
    p = int(input())
    W = G * p/100
    print("Der Prozentwert beträgt:\n ", W)
    # print(W)
    print("Was möchten Sie als nächstes Berechnen?")
    Eingabefunktion()

def Prozentsatz():
    print("Bitte Grundwert eingeben: ")
    G = int(input())
    print("Bitte den Prozentwert eingeben: ")
    W = int(input())
    p = W/G
    print("Der Prozentsatz in Dezimalschreibweise:\n ", p)
    # print(p)
    print("Was möchten Sie als nächstes Berechnen?")
    Eingabefunktion()

def theend():
    print("Das Programm endet jetzt\n" "\U0001F917")
    print("\U0001F917")

def Eingabefunktion():
    print("1.G = Grundwert bitte '1' eingeben\n""2.W = Prozentwert bitte '2' eingeben\n""3.p = Prozentsatz bitte '3' eingeben\n""4.Ende = Programmende bitte '4' eingeben")
    # print("2.W = Prozentwert bitte '2' eingeben")
    # print("3.p = Prozentsatz bitte '3' eingeben")
    # print("4.Ende = Programmende bitte '4' eingeben")
    versuche = 5    # initialize counter
    # x = [1, 2, 3]
    x = "1" # Grundwert
    y = "2" # Prozentwert
    z = "3" # Prozentsatz
    ende = "4"
    while True:
        eingabe = input("bitte den entsprechenden Wert eingeben: ")
        versuche -= 1  # versuch = versuch - 1

        # for i in x:
        # if eingabe == i:
        # print("richtig")
        # break
        # break
        # if eingabe == x or eingabe == y or eingabe == z:

        if eingabe == x:
            print("Sie haben Programm: ", eingabe, "Grundwert gewählt")
            Grundwert()
            break
        if eingabe == y:
            print("Sie haben Programm: ", eingabe, "Prozentwert gewählt")
            Prozentwert()
            break
        if eingabe == z:
            print("Sie haben Programm: ", eingabe, "Prozentsatz gewählt")
            Prozentsatz()
            break
        if eingabe == ende:
            theend()
            break
        if versuche == 0:
            print("zuviele Falscheingaben.")
            break
        else:
            print("Fehlerhafte Eingabe\n")
            print("Sie haben noch", versuche, "Versuche ")
    if eingabe == "0" or eingabe > "4":
        print("Diese Funktion gibt es nicht! Das Programm endet jetzt")
        # Eingabefunktion()

        # print( "Sie haben Programm: ", eingabe, "gewählt")
Eingabefunktion()

