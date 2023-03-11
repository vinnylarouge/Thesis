class S(float):
    def __init__(self, value):
        if not (0 <= value <= 1):
            raise ValueError("Max-Mult Semiring value must be between 0 and 1")
        super().__init__(value)

    def __add__(self, other):
        return S(max(float(self),float(other)))

    def __mul__(self, other):
        return S(float(self) * float(other))