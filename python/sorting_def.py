#숫자 정렬 함수 실행 시간 비교 코드

import time
import random


def mergeSort(list):
    if len(list) > 1:
        mid = len(list) // 2
        L = list[:mid]
        R = list[mid:]

        mergeSort(L)
        mergeSort(R)

        list.clear()

        while len(L) > 0 and len(R) > 0:
            if L[0] <= R[0]:
                list.append(L[0])
                L.pop(0)
            
            else:
                list.append(R[0])
                R.pop(0)

        for i in L:
            list.append(i)
        for i in R:
            list.append(i)


def partition(list,low,high):
    i = (low-1)
    pivot = list[high]

    for j in range(low,high):
        if list[j] < pivot:
            i += 1
            list[i], list[j] = list[j], list[i]

    list[i+1], list[high] =list[high], list[i+1]
    return(i+1)

def quickSort(list,low,high):
    if low < high:

        pi = partition(list, low, high)

        quickSort(list, low, pi-1)
        quickSort(list, pi+1, high)



def heapify(list, n, i):
    largest = i
    l = 2 * i + 1
    r = 2 * i + 2

    if l < n and list[i] < list[l]:
        largest = l

    if r < n and list[largest] < list[r]:
        largest = r

    if largest != i:
        list[i], list[largest] = list[largest], list[i]

        heapify(list, n, largest)

def heapSort(list):
    n = len(list)

    for i in range(n // 2 - 1, -1, -1):
        heapify(list, n, i)

    for i in range(n - 1, 0, -1):
        list[i], list[0] = list[0], list[i]
        heapify(list, i, 0)

list_1 =list(i for i in range(10000))
random.shuffle(list_1)

list_copy = list_1.copy()

start_time = time.time()
list_copy = list_1.copy()
mergeSort(list_copy)
end_time = time.time()
print(f"Merge sort 정렬 소요 시간: {end_time - start_time} 초")

list_copy = list_1.copy()
start_time = time.time()
n = len(list_1)
quickSort(list_copy, 0, n-1) 
end_time = time.time()
print(f"Quick sort 정렬 소요 시간: {end_time - start_time} 초")



list_copy = list_1.copy()
start_time = time.time()
heapSort(list_copy)
end_time = time.time()
print(f"Heap sort 정렬 소요 시간: {end_time - start_time} 초")


list_copy = list_1.copy()
start_time = time.time()
list_copy.sort() 
end_time = time.time()
print(f"파이썬 Sort 함수 정렬 시간: {end_time - start_time} 초")
