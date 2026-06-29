# Problem 1

```py
# A - стоимость тарифа в мес
# B - размер тарифа Мб в мес
# C - стоимость лишнего 1 Мб
# D - Мб потрачено в следующем мес
# Числа во входном файле разделены пробелами.
# Во сколько рублей обойдётся интернет-трафик в следующем месяце?

a, b, c, d = [int(n) for n in input().split()]

def get_amount(a, b, c, d):
    if d <= b:
        return a
    else:
        return a + ((d - b) * c)

print(get_amount(a, b, c, d))
```

# Problem 2
