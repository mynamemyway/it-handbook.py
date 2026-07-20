# Operator Functions (функции из модуля operator)

## Шпаргалка общая `.py`

```py
import operator as op

# Базовые арифметические
op.add(a, b)        # a + b
op.sub(a, b)        # a - b  
op.mul(a, b)        # a * b
op.truediv(a, b)    # a / b  (обычное деление)
op.floordiv(a, b)   # a // b (целочисленное деление)
op.mod(a, b)        # a % b (остаток от деления)
op.pow(a, b)        # a ** b (возведение в степень)

# Унарные операции
op.neg(a)           # -a
op.pos(a)           # +a
op.abs(a)           # abs(a)
op.inv(a)           # ~a (инверсия)
op.invert(a)        # ~a (синоним)


# Битовые операции:
op.lshift(a, b)     # a << b
op.rshift(a, b)     # a >> b  
op.and_(a, b)       # a & b
op.or_(a, b)        # a | b
op.xor(a, b)        # a ^ b


# Операции сравнения:
op.lt(a, b)         # a < b
op.le(a, b)         # a <= b
op.eq(a, b)         # a == b
op.ne(a, b)         # a != b
op.ge(a, b)         # a >= b
op.gt(a, b)         # a > b

# Проверка идентичности объектов
op.is_(a, b)        # a is b
op.is_not(a, b)     # a is not b


# Работа с последовательностями:
op.concat(a, b)     # a + b (для последовательностей)
op.contains(a, b)   # b in a
op.countOf(a, b)    # количество вхождений b в a
op.indexOf(a, b)    # индекс первого вхождения b в a

# Доступ к элементам
op.getitem(a, b)    # a[b]
op.setitem(a, b, c) # a[b] = c
op.delitem(a, b)    # del a[b]

# Срезы
op.getslice(a, b, c)    # a[b:c] (устаревшее)
op.setslice(a, b, c, d) # a[b:c] = d (устаревшее)
op.delslice(a, b, c)    # del a[b:c] (устаревшее)


# Функции для атрибутов:
op.attrgetter(attr)     # функция-геттер атрибута
op.attrgetter(*attrs)   # функция-геттер нескольких атрибутов

# Пример:
f = op.attrgetter('name', 'age')
name, age = f(person)


# Функции для элементов:
op.itemgetter(item)     # функция-геттер элемента
op.itemgetter(*items)   # функция-геттер нескольких элементов

# Пример:
f = op.itemgetter(2)    # получает 3-й элемент
f = op.itemgetter(1, 3) # получает 2-й и 4-й элементы


# Метод-вызыватели:
op.methodcaller(name)       # функция, вызывающая метод
op.methodcaller(name, *args, **kwargs)

# Пример:
f = op.methodcaller('upper')
result = f('hello')  # 'HELLO'

# Логические операции:
op.not_(a)          # not a
op.truth(a)         # True если a истинно, иначе False

# Эти функции возвращают первый аргумент, который определяет результат
op.and_(a, b)       # a and b
op.or_(a, b)        # a or b


# Получение полного списка:
import operator

# Получить все функции модуля
functions = [name for name in dir(operator) 
           if not name.startswith('_') and callable(getattr(operator, name))]

print("Все функции operator:")
for func in sorted(functions):
    print(f"operator.{func}")

# Или сгруппировать по категориям
categories = {
    'Арифметика': ['add', 'sub', 'mul', 'truediv', 'floordiv', 'mod', 'pow', 'neg', 'pos', 'abs'],
    'Битовые': ['lshift', 'rshift', 'and_', 'or_', 'xor', 'inv', 'invert'],
    'Сравнение': ['lt', 'le', 'eq', 'ne', 'ge', 'gt', 'is_', 'is_not'],
    'Последовательности': ['concat', 'contains', 'countOf', 'indexOf', 'getitem', 'setitem', 'delitem'],
    'Утилиты': ['attrgetter', 'itemgetter', 'methodcaller', 'not_', 'truth']
}


# Практические примеры использования:

import operator as op

# Сумма элементов списка
numbers = [1, 2, 3, 4, 5]
total = op.add.reduce(numbers)  # 15

# Сортировка по атрибуту
people = [{'name': 'Alice', 'age': 30}, {'name': 'Bob', 'age': 25}]
sorted_people = sorted(people, key=op.itemgetter('age'))

# Фильтрация
numbers = [1, 2, 3, 4, 5]
even = list(filter(op.methodcaller('__mod__', 2).__eq__(0), numbers))  # [2, 4]
```

---

## Часто используемые

| Операция             | Синтаксис     | Функция             | Расшифровка сокращения   |
| :------------------- | :-----------  | :------------------ | :----------------------- |
| Addition             | `a + b`       | `add(a, b)`         | ADDition                 |
| Containment Test     | `obj in seq`  | `contains(seq, obj)`| CONTAINS                 |
| Division             | `a / b`       | `truediv(a, b)`     | TRUE DIVision            |
| Division             | `a // b`      | `floordiv(a, b)`    | FLOOR DIVision           |
| Exponentiation       | `a ** b`      | `pow(a, b)`         | POWer                    |
| Modulo               | `a % b`       | `mod(a, b)`         | MODulo                   |
| Multiplication       | `a * b`       | `mul(a, b)`         | MULtiplication           |
| Negation (Arithmetic)| `-a`          | `neg(a)`            | NEGation                 |
| Subtraction          | `a - b`       | `sub(a, b)`         | SUBtraction              |
| Ordering             | `a < b`       | `lt(a, b)`          | Less Than                |
| Ordering             | `a <= b`      | `le(a, b)`          | Less than or Equal       |
| Equality             | `a == b`      | `eq(a, b)`          | EQual                    |
| Difference           | `a != b`      | `ne(a, b)`          | Not Equal                |
| Ordering             | `a >= b`      | `ge(a, b)`          | Greater than or Equal    |
| Ordering             | `a > b`       | `gt(a, b)`          | Greater Than             |


## Полный список функций

| Операция                             | Синтаксис           | Функция                            |
| :----------------------------------- | :------------------ | :--------------------------------- |
| Addition                             | `a + b`             | `add(a, b)`                        |
| Concatenation                        | `seq1 + seq2`       | `concat(seq1, seq2)`               |
| Containment Test                     | `obj in seq`        | `contains(seq, obj)`               |
| Division                             | `a / b`             | `truediv(a, b)`                    |
| Division                             | `a // b`            | `floordiv(a, b)`                   |
| Bitwise And, or Intersection         | `a & b`             | `and_(a, b)`                       |
| Bitwise Exclusive Or                 | `a ^ b`             | `xor(a, b)`                        |
| Bitwise Inversion, or Complement     | `~ a`               | `invert(a)`                        |
| Bitwise Or, or Union                 | `a \| b`            | `or_(a, b)`                        |
| Exponentiation                       | `a ** b`            | `pow(a, b)`                        |
| Identity                             | `a is b`            | `is_(a, b)`                        |
| Identity                             | `a is not b`        | `is_not(a, b)`                     |
| Identity                             | `a is None`         | `is_none(a)`                       |
| Identity                             | `a is not None`     | `is_not_none(a)`                   |
| Indexed Assignment                   | `obj[k] = v`        | `setitem(obj, k, v)`               |
| Indexed Deletion                     | `del obj[k]`        | `delitem(obj, k)`                  |
| Indexing                             | `obj[k]`            | `getitem(obj, k)`                  |
| Left Shift                           | `a << b`            | `lshift(a, b)`                     |
| Modulo                               | `a % b`             | `mod(a, b)`                        |
| Multiplication                       | `a * b`             | `mul(a, b)`                        |
| Matrix Multiplication                | `a @ b`             | `matmul(a, b)`                     |
| Negation (Arithmetic)                | `-a`                | `neg(a)`                           |
| Negation (Logical)                   | `not a`             | `not_(a)`                          |
| Positive                             | `+ a`               | `pos(a)`                           |
| Right Shift                          | `a >> b`            | `rshift(a, b)`                     |
| Slice Assignment                     | `seq[i:j] = values` | `setitem(seq, slice(i, j), values)`|
| Slice Deletion                       | `del seq[i:j]`      | `delitem(seq, slice(i, j))`        |
| Slicing                              | `seq[i:j]`          | `getitem(seq, slice(i, j))`        |
| String Formatting                    | `s % obj`           | `mod(s, obj)`                      |
| Subtraction                          | `a - b`             | `sub(a, b)`                        |
| Truth Test                           | `obj`               | `truth(obj)`                       |
| Ordering                             | `a < b`             | `lt(a, b)`                         |
| Ordering                             | `a <= b`            | `le(a, b)`                         |
| Equality                             | `a == b`            | `eq(a, b)`                         |
| Difference                           | `a != b`            | `ne(a, b)`                         |
| Ordering                             | `a >= b`            | `ge(a, b)`                         |
| Ordering                             | `a > b`             | `gt(a, b)`                         |
