import UIKit


print("Unit 1: Operators")
print("Exercise 1")
/*:
##              1.3.1
 
 You decide to build a shed and want to know beforehand the area of your yard that it will take up. Create two constants, `width` and `height`, with values of 10 and 20, respectively. Create an `area` constant that is the result of multiplying the two previous constants together, and print out the result.
 */
let width = 10
let height = 20
let area = width * height
print(area)
//:  You decide that you'll divide your shed into two rooms. You want to know if dividing it equally will leave enough room for some of your larger storage items. Create a `roomArea` constant that is the result of dividing `area` in half. Print out the result.
let roomArea = area / 2
print(roomArea)
//:  Create a `perimeter` constant whose value equals `width` plus `width` plus `height` plus `height`, then print out the result.
let perimeter = width + width + height + height
print(perimeter)
//:  Print what you would expect the result of integer division of 10 divided by 3 to be. Create a constant, `integerDivisionResult` that is the result of 10 divided by 3, and print the value.
// After division the result will be rounded to the 'Int' whole number, so remainder will be just dropped.
let integerDivisionResult = 10 / 3
print(integerDivisionResult)
//:  Now create two constants, `double10` and `double3`, set to 10 and 3, and declare their types as `Double` values. Declare a final constant `divisionResult` equal to the result of `double10` divided by `double3`. Print the value of `divisionResult`. How does this differ from the value when using integer division?
let double10: Double = 10
let double3: Double = 3
let divisionResult = double10 / double3
print(divisionResult)
print("Since both constants are Doubles, the result will be the decimal number")
/*:
 Given the value pi (3.1415927), create a `radius` constant with a value of 5.0, then calculate the diameter and circumference of the circle using the following equations, and print the results:
 
 *diameter = 2 * radius*
 
 *circumference = 2 * pi * radius.*
 */
let pi = 3.1415927
let radius = 5.0
let diameter = 2 * radius
let circumference = 2 * pi * radius
print(diameter)
print(circumference)
//:  Create an integer constant. Using the modulus operator, set its value to the remainder of 12 divided by 5.
let remainder = 12 % 5
print(remainder)
//:  Create two integer constants, `even` and `odd` and set them to any even integer and any odd integer, respectively. For each, print the remainder of dividing the value by 2. Looking at the results, how do you think you could use the remainder operator to determine if an integer is even or odd?
let even: Int = 10
let odd: Int = 5
print(even % 2)
print(odd % 2)


print("Exercise 2")
/*:
##              1.3.2
 
 Your fitness tracker keeps track of users' heart rate, but you might also want to display their average heart rate over the last hour. Create three constants, `heartRate1`, `heartRate2`, and `heartRate3`. Give each constant a different value between 60 and 100. Create a constant `addedHR` equal to the sum of all three heart rates. Now create a constant called `averageHR` that equals `addedHR` divided by 3 to get the average. Print the result.
 */
let heartRate1E2 = 70
let heartRate2E2 = 90
let heartRate3E2 = 60
let addedHR = heartRate1E2 + heartRate2E2 + heartRate3E2
let averageHRE2 = addedHR / 3
print(averageHRE2)
//:  Imagine that partway through the day a user has taken 3,467 steps out of the 10,000 step goal. Create constants `steps` and `goal`. Both will need to be of type `Double` so that you can perform accurate calculations. `steps` should be assigned the value 3,467, and `goal` should be assigned 10,000. Create a constant `percentOfGoal` that equals an expression that evaluates to the percent of the goal that has been achieved so far.
let steps: Double = 3_467
let goal: Double = 10_000
let percentOfGoal = steps / goal * 100
print("\(percentOfGoal)%")
print("Exercise 3")
/*:
##              1.3.3
 
 Declare a variable whose value begins at 10. Using addition, update the value to 15 using the compound assignment operator. Using multiplication, update the value to 30 using compound assignment. Print out the variable's value after each assignment.
 */
var variable = 10
print(variable)
variable += 5
print(variable)
variable *= 2
print(variable)
/*:
 Create a variable called `piggyBank` that begins at 0. You will use this to keep track of money you earn and spend. For each point below, use the right compound assignment operator to update the balance in your piggy bank.
 
- Your neighbor gives you 10 dollars for mowing her lawn
- You earn 20 more dollars throughout the week doing odd jobs
- You spend half your money on dinner and a movie
- You triple what's left in your piggy bank by washing windows
- You spend 3 dollars at a convenience store
 
 Print the balance of your piggy bank after each step.
 */
var piggyBank = 0
print(piggyBank)
piggyBank += 10
print(piggyBank)
piggyBank += 20
print(piggyBank)
piggyBank /= 2
print(piggyBank)
piggyBank *= 3
print(piggyBank)
piggyBank -= 3
print(piggyBank)
print("Exercise 4")
/*:
##                  1.3.4
 
 The most basic feature of your fitness tracking app is counting steps. Create a variable `steps` and set it equal to 0. Then increment its value by 1 to simulate a user taking a step.
 */
var stepsE4 = 0
stepsE4 += 1
/*:
 In addition to tracking steps, your fitness tracking app tracks distance traveled. Create a variable `distance` of type `Double` and set it equal to 50. This will represent the user having traveled 50 feet.
 
 You decide, however, to display the distance in meters. 1 meter is approximately equal to 3 feet. Use a compound assignment operator to convert `distance` to meters. Print the result.
 */
var distance: Double = 50
distance /= 3
print(distance)
print("Exercise 5")
/*:
##                      1.3.5
 Print out what you think 10 + 2 * 5 evaluates to. Then print out the actual expression (i.e. `print(10 + 2 * 5)`)
 */
// I think it is equal to 20
print(10 + 2 * 5)
//:  In a separate `print` statement, add in the necessary parentheses so that addition takes place before multiplication.
print((10 + 2) * 5)

//:  Print out what you think 4 * 9 - 6 / 2 evaluates to. Then print out the actual expression.
//I guess 33
print(4 * 9 - 6 / 2)
//:  In a separate `print` statement, add in the necessary parentheses so that the subtraction is prioritized over the multiplication and division.
print(4 * (9 - 6) / 2)

print("Exercise 6")
/*:
##              1.3.6
 
 If you completed the Fitness Calculations exercise, you calculated an average heart rate to display to the user. However, using proper order of operations you can do this in fewer steps. Create three separate heart rate constants, all of type `Double`, with values between 60 and 100. Then create a constant equal to the average heart rate. If you use correct order of operations you can do the heart calculation in one line.
 */
let heartRate1: Double = 70
let heartRate2: Double = 90
let heartRate3: Double = 60
let averageHR = (heartRate1 + heartRate2 + heartRate3) / 3
print(averageHR)

/*:
 One feature you might want to give users is to display their current body temperature. Create a constant `tempInFahrenheit` equal to 98.6.
 
 You may want to also show the temperature in celsius. You can convert fahrenheit to celsius by taking `tempInFahrenheit` and subtracting 32, then multiplying the result by (5.0/9.0). Create a constant `tempInCelsius` that calculates in one line the temperature in celsius.
 */
let tempInFahrenheit = 98.6
let tempInCelsius = (tempInFahrenheit - 32) * (5.0 / 9.0)

print("Exercise 7")
/*:
##                  1.3.7
 Create an integer constant `x` with a value of 10, and a double constant `y` with a value of 3.2. Create a constant `multipliedAsIntegers` equal to `x` times `y`. Does this compile? If not, fix it by converting your `Double` to an `Int` in the mathematical expression. Print the result.
 */
let x: Int = 10
let y: Double = 3.2
let multipliedAsIntegers = x * Int(y)
print(multipliedAsIntegers)
//:  Create a constant `multipliedAsDoubles` equal to `x` times `y`, but this time convert the `Int` to a `Double` in the expression. Print the result.
let multipliedAsDoubles = Double(x) * y
print(multipliedAsDoubles)
//:  Are the values of `multipliedAsIntegers` and `multipliedAsDoubles` different? Print a statement to the console explaining why.
print("Values are different because in the first example it's flooring y value and calculate a result as 10 * 3.\nIn the second example we maintain accuracy, so the result is 10.0 * 3.2")

print("Exercise 8")

/*:
##              1.3.8

 If you completed the Fitness Calculations exercise, you calculated the percent of the daily step goal that a user has achieved. However, you did this by having `steps` be of type `Double`. But you can't really track a partial step, so `steps` should probably be of type `Int`. Go ahead and declare `steps` as type `Int` and give it a value between 500 and 6,000. Then declare `goal` as type `Int` and set it equal to 10,000.
 Now create a constant `percentOfGoal` of type `Double` that equals the percent of the goal that has been reached so far. You'll need to convert your constants of type `Int` to be of type `Double` in your calculation.
 */
let stepsE8: Int = 1_700
let goalE8: Int = 1_900
let percentOfGoalE8: Double = Double(stepsE8) / Double(goalE8) * 100
print(percentOfGoal)

