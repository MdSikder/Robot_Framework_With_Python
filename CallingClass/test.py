class Calculator:
    def addition(self, num1, num2):
        return float(num1) + float(num2)

    def kwargs_demo(self, Kwargs):
        for args in Kwargs:
            if args == 'Apple':
                return True
        return False


cal = Calculator()
