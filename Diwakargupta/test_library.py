num = 2


def output(num):
    if num > 100 or num < -100 or num == 13:
        raise Exception("System error")
    print(10 / num)
