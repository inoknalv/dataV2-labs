"""
You are presented with an integer number larger than 5. Your goal is to identify the longest side
possible in a right triangle whose sides are not longer than the number you are given.

For example, if you are given the number 15, there are 3 possibilities to compose right triangles:

1. [3, 4, 5]
2. [6, 8, 10]
3. [5, 12, 13]

The following function shows one way to solve the problem but the code is not ideal or efficient.
Refactor the code based on what you have learned about code simplicity and efficiency.
"""

def my_function(X):
    solutions = []
    for x in range(5, X):
        for y in range(4, X):
            for z in range(3, X):
                if (x*x==y*y+z*z):
                    solutions.append([x, y, z])
    m = 0
    for solution in solutions:
        if m < max(solution):
            m = max(solution)
    return m

X = input("What is the maximal length of the triangle side? Enter a number: ")

print("The longest side possible is " + str(my_function(int(X))))

def hypothenuse_max(X):
    # Le triangle rectangle a ses trois coté x, y, z tels que x > y > z
    for x in range(X-1, 4, -1):
        y_max = x-1 # car y < x
        y_min = int((x*x/2)**(1/2)) # car y > z.
                                    # dans le cas d'un triangle isocèle rectangle y = z = √(x²/2)
                                    # le cas du triangle isocèle sera exclu car si y = z, x = √2*y et n'est donc pas un entier
        for y in range(y_max, y_min, -1):
            z = (x*x - y*y)**(1/2)
            if z.is_integer():
                # si on trouve un z entier, on retourne l'hyptohénuse
                return x
    # (facultatif) si on ne trouve aucun triangle rectangle avec trois côtés de longueur entière, on retourne 0
    return 0
