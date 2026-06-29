def print_square(size):
    print("*" * size)

    for _ in range(size - 2):
        print(f"*{' ' * (size - 2)}*")

    print("*" * size)


if __name__ == "__main__":
    size = int(input("Enter the square size: "))

    print_square(size)
