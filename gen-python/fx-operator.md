# Operator Functions (функции из модуля operator)

## Самые часто используемые

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
