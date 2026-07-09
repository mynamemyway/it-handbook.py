def contains_digit(s):
    """
    Проверяет, содержит ли строка хотя бы одну цифру.
    
    Args:
        s (str): Строка для проверки
        
    Returns:
        bool: True, если строка содержит хотя бы одну цифру, и False в противном случае
    """
    for char in s:
        if char.isdigit():
            return True
    return False


# Тестовые случаи
if __name__ == "__main__":
    # Тест 1: Строка с цифрами
    assert contains_digit("hello123") == True
    print("Тест 1 пройден: contains_digit('hello123') -> True")
    
    # Тест 2: Строка без цифр
    assert contains_digit("hello") == False
    print("Тест 2 пройден: contains_digit('hello') -> False")
    
    # Тест 3: Пустая строка
    assert contains_digit("") == False
    print("Тест 3 пройден: contains_digit('') -> False")
    
    # Тест 4: Только цифры
    assert contains_digit("12345") == True
    print("Тест 4 пройден: contains_digit('12345') -> True")
    
    # Тест 5: Строка с цифрами и специальными символами
    assert contains_digit("!@#4$%^") == True
    print("Тест 5 пройден: contains_digit('!@#4$%^') -> True")
    
    # Тест 6: Строка со специальными символами, но без цифр
    assert contains_digit("!@#$%^&*()") == False
    print("Тест 6 пройден: contains_digit('!@#$%^&*()') -> False")
    
    # Тест 7: Строка с пробелами и цифрами
    assert contains_digit("   5   ") == True
    print("Тест 7 пройден: contains_digit('   5   ') -> True")
    
    # Тест 8: Строка только с пробелами
    assert contains_digit("     ") == False
    print("Тест 8 пройден: contains_digit('     ') -> False")
    
    print("\nВсе тесты пройдены успешно!")