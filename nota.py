def media_prova(p1, p2):
    return (p1 + p2)/2

def media_lista(done):
    return (done*10)/7


def media(p1, p2, lists_done):
    return 0.7 * media_prova(p1,p2) + 0.3 * media_lista(lists_done)


if __name__ == "__main__":
    p1 = float(input("Nota P1: "))
    p2 = float(input("Nota P2: "))
    lists = float(input("Listas feitas: "))
    print("Sua média é: {}".format(media(p1,p2,lists)))
