class Triangle:
    def __init__(self, first_leg, second_leg):
        self.first_leg = first_leg
        self.second_leg = second_leg

    def calculate_hypotenuse(self):
        return (self.first_leg**2 + self.second_leg**2) ** 0.5


if __name__ == "__main__":
    first_leg = float(input("Enter the triangle first leg: "))
    second_leg = float(input("Enter the triangle second leg: "))

    triangle = Triangle(first_leg, second_leg)

    print(f"Hypotenuse value: {triangle.calculate_hypotenuse()}")
