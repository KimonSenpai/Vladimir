m = dict()
def f(i, j):
    if i + j >= 47:
        return 0
    if (i, j) in m:
        return m[(i,j)]
    mas = [f(i + 1, j + 2), f(i + 2, j + 1), f(i*2, j), f(i, j*2)]
    if all(map(lambda x: x > 0, mas)):
        m[(i, j)] = -max(mas) - 1
    else:
        m[(i, j)] = -max(filter(lambda x: x <= 0, mas)) + 1
    return m[(i, j)]




good = []
for i in range(1, 100):
    if any(map(lambda x: x == 1, [f(i + 1, 10 + 2), f(i + 2, 10 + 1), f(i*2, 10), f(i, 10*2)])):
        good += [i]
print(*good)
good = []
for i in range(1, 100):
    if f(i, 10) == 3:
        good += [i]
        
print(*good)
good = []
for i in range(1, 100):
    if f(i, 10) == -4:
        good += [i]
print(*good)