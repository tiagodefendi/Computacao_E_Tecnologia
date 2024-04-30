# Análise

## Configurações do computador:

* Processador: 11th Gen Intel(R) Core(TM) i5-1135G7@ 2.40GHz 2.42 GHz

* RAM: 8,00GB

* Disco Rígido: SSD de 256GB PCIe NVMe M.2

## Respostas

LISTA - saida.txt

Os algoritmos: Sorted e Merge Sort acusam o erro: MemoryError na execução da lista de 50000000 itens e o Quick Sort acusa o erro: maximum recursion depth exceded em 900000. Já os Algoritmos Selection Sort, Insertion Sort passam de 10 minutos em 200000, o Bubble Sort também passa em 100000

Os Algoritmos mais rápidos são Sorted, Merge Sort e Quick Sort, esses últimos alteram as posições entre 20000 e 30000 execuções. Os mais lentos são Bubble Sort, Insertion Sort e Selection Sort, esses últimos também trocam de posição entre 40000 e 50000

Complexidade:

Bubble Sort: $O(n^2)$

Sorted: $O(nlog_n)$

O algoritmo Shell Sort é uma versão generalizada do algoritmo de ordenação por inserção. Ele começa ordenando elementos que estão distantes uns dos outros e gradualmente reduz o intervalo entre os elementos a serem ordenados. No fim, seus resultados são muito parecidos com o algoritmo Merge Sort, tanto que eles tem uma funcionalidade e uma complexidade $(nlog_n)$ muito parecidas.
