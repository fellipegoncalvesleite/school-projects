def fat(num):
    if not num > 0:
        raise ValueError("The provided number should be > 0")

    total = num

    while num > 1:
        num -= 1
        total *= num

    return total


def is_even(num):
    return num % 2 == 0


if __name__ == "__main__":
    num = int(input("Enter a value: "))

    print(f"The number is even: {str(is_even(num))}")

    print(f"The fatorial of {num} is {fat(num)}")
