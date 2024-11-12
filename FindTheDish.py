# find the cuisine of the dish based on user input

dish = input ("Enter a dish name :")
indian = ["samosa", "butter chicken", "Chana masala", "Gulab Jamun"]
Italian = ["pizza", "risotta", "lasagna", "ravioli"]
chinese = ["dumplings", "rolls", "Chowmein", "Fried Rice"]

#indian is the list of items and the items are.....4 lists of items created = 1- dimensional array

if dish in indian:
    print ("dish is indian")
elif dish in Italian:
    print ("dish is Italian")
elif dish in chinese:
    print ("dish is chinese")
else:
    print ("what cuisine are you eating?")

# Use a FOR loop
for ii in indian or Italian:
    if ii == dish:
        print (dish, "Is either indian or Italian")
    else:
        print ("what cuisine are you eating?")
# Use a WHILE loop
y=1
while y <= 10:
    print (y)
    y= y + 1

11/06/2024
Itemsbought = [12.34, 56.78, 90.12, 23.45]

#write function to print total sales tax
# on the above list
Itemsboughts = [12.34, 56.78, 98.12, 23.45]

def calculatetax (xxx):
    total = 0
    for item in xxx:
        total = total + item * 0.10
        round_total = round (total, 2)
    return (round_total)

print ('This is the total sales tax', calculatetax(Itemsboughts))
###########
You 6:38 PM
Katya, Can you please send me your file since i was not in school i can use it to learn

Kateryna Chepiha 6:40 PM
#create function
def sum(a,b):
    total = a + b
    return total
#call function
result = sum(1,2)
print(result)

def calc_total(exp):
    total = 0
    for item in exp:
        total = total + item
    return total

expenses = [100,200, 300, 400, 500]
result = calc_total(expenses)

print("Our result is", result)

def calculatesum (a, b, c = 55):
    return (a + b + c)
print ("Function with default value", calculatesum(1, 2))
# write function to print total sales tax on the above list

Itemsboughts = [12.34, 56.78, 98.12, 23.45]

def calculatetax (xxx):
    total = 0
    for item in xxx:
        total = total + item * 0.10
        round_total = round (total, 2)
    return (round_total)

print ('This is the total sales tax', calculatetax(Itemsboughts))
####
import pandas

csvfile = pandas.read_csv (*EmployeeCSV.csv*)
print(csvFile)

