from timeit import repeat

REPETICOES = 3
EXECUCOES = 1

def shell_sort(arr):
    intervalo = len(arr) // 2
    while intervalo > 0:
        for i in range(intervalo, len(arr)):
            valor = arr[i]
            j = i
            while j >= intervalo and arr[j - intervalo] > valor:
                arr[j] = arr[j - intervalo]
                j -= intervalo
            arr[j] = valor
        intervalo //= 2
    return arr

def executa_algoritmo(algoritmo, lista):
    if algoritmo != "sorted":
        setup_code = f"from __main__ import {algoritmo}"
    else:
        setup_code = ""

    stmt = f"{algoritmo}({lista})"

    tempos = repeat(setup=setup_code, stmt=stmt,
                    repeat=REPETICOES, number=EXECUCOES)

    print(f"Algoritmo: {algoritmo}. Menor tempo de execução: {min(tempos)}")

LISTA_LENGTH = [5, 10, 100, 1000, 5000, 10000, 20000, 30000, 40000, 50000, 60000, 70000, 80000, 90000, 100000,
                200000, 300000, 400000, 500000, 600000, 700000, 800000, 900000, 1000000, 5000000, 10000000,
                50000000, 10000000]

if __name__ == "__main__":
    for i in range(len(LISTA_LENGTH)):
        lista = [randint(0, 999) for i in range(LISTA_LENGTH[i])]
        print(LISTA_LENGTH[i])
        executa_algoritmo(algoritmo="shell_sort", lista=lista[:])
        print()
