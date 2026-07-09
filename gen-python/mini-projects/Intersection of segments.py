a1, b1, a2, b2 = int(input()), int(input()), int(input()), int(input())

# Находим начало пересечения
if a1 > a2:
    start = a1
else:
    start = a2

# Находим конец пересечения
if b1 < b2:
    end = b1
else:
    end = b2

if start < end:
    print(start, end)
elif start == end:
    print(start)
else:
    print("пустое множество")
