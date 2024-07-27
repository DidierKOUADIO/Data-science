# Assigning multiple values to multiple variables
x, y, z = "Orange", "Banana", "Cherry"
print(x)
print(y)
print(z)

# Assigning 1 value to multiple variables
x = y = z = "Orange"
print(x)
print(y)
print(z)

# Unpack a collection
fruits = ["apple", "banana", "cherry"]
x, y, z = fruits
print(x)
print(y)
print(z)

# globales Variables
# Use the value of a local variable outside a function----------------

def myfunc1():
  global x
  x = "fantastic"

myfunc1()
print("Python is " + x)

# Change the value of a global variable inside a function----------------

x = "awesome"
def myfunc2():
  global x
  x = "fantastic"

myfunc2()
print("Python is " + x)

# Getting the Data Type
x = 5
print(type(x))

# Random Number
import random
print(random.randrange(1, 10))








