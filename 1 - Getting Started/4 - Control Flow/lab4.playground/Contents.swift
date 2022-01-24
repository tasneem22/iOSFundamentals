import UIKit


print("Unit 1: Control Flow")
print("Exercise 1")
/*:
##              1.4.1
 For each of the logical expressions below, print out what you think the resulting value will be (`true` or `false`). Then print out the actual expression to see if you were right. An example has been provided below.
 
    43 == 53
    print(false)
    print(43 == 53)
 
 1. `9 == 9`
 */
print(true)
print(9 == 9)
//:  2. `9 != 9`
print(false)
print(9 != 9)
//:  3. `47 > 90`
print(false)
print(47 > 90)
//:  4. `47 < 90`
print(true)
print(47 < 90)
//:  5. `4 <= 4`
print(true)
print(4 <= 4)
//:  6. `4 >= 5`
print(false)
print(4 >= 5)
//:  7. `(47 > 90) && (47 < 90)`
print(false)
print((47 > 90) && (47 < 90))
//:  8. `(47 > 90) || (47 < 90)`
print(true)
print((47 > 90) || (47 < 90))
//:  9. `!true`
print(false)
print(!true)

print("Exercise 2")
/*:
##                1.4.2
 
 Imagine you're creating a machine that will count your money for you and tell you how wealthy you are based on how much money you have. A variable `dollars` has been given to you with a value of 0. Write an if statement that prints "Sorry, kid. You're broke!" if `dollars` has a value of 0. Observe what is printed to the console.
 */
var dollars = 0
if dollars == 0 {
    print("Sorry, kid. You're broke!")
}
//:  `dollars` has been updated below to have a value of 10. Write an an if-else statement that prints "Sorry, kid. You're broke!" if `dollars` has a value of 0, but prints "You've got some spending money!" otherwise. Observe what is printed to the console.
dollars = 10
if dollars == 0 {
    print("Sorry, kid. You're broke!")
} else {
    print("You've got some spending money!")
}
//:  `dollars` has been updated below to have a value of 105. Write an an if-else-if statement that prints "Sorry, kid. You're broke!" if `dollars` has a value of 0, prints "You've got some spending money!" if `dollars` is less than 100, and prints "Looks to me like you're rich!" otherwise. Observe what is printed to the console.
dollars = 105
if dollars == 0 {
    print("Sorry, kid. You're broke!")
} else if dollars < 100 {
    print("You've got some spending money!")
} else {
    print("Looks to me like you're rich!")
}
print("Exercise 3")
/*:
 ##                1.4.3

 You want your fitness tracking app to give as much encouragement as possible to your users. Create a variable `steps` equal to the number of steps you guess you've taken today. Create a constant `stepGoal` equal to 10,000. Write an if-else statement that will print "You're almost halfway there!" if `steps` is less than half of `stepGoal`, and will print "You're over halfway there!" if `steps` is greater than half of `stepGoal`.
 */
var stepsE3 = 500
let stepGoalE3 = 10_000
if stepsE3 < stepGoalE3/2 {
    print("You're almost halfway there!")
} else {
    print("You're over halfway there!")
}
//:  Now create a new, but similar, if-else-if statement that prints "Way to get a good start today!" if `steps` is less than a tenth of `stepGoal`, prints "You're almost halfway there!" if `steps` is less than half of `stepGoal`, and prints "You're over halfway there!" if `steps` is greater than half of `stepGoal`.
if stepsE3 < stepGoalE3/10 {
    print("Way to get a good start today!")
} else if stepsE3 < stepGoalE3/2 {
    print("You're almost halfway there!")
} else {
    print("You're over halfway there!")
}

print("Exercise 4")
/*:
 ##                1.4.4

 Imagine you're going to dinner with friends and are struggling to decide where to go. Two of you have very strong opinions and have clearly laid out your requirements for dinner as follows:
 
- You want to eat somewhere that has either fish or pizza
- Your friend wants to eat somewhere with vegan options.
 
 Another friend brings up a restaurant she thinks will fit both of your criteria. This restaurant's attributes are represented by a few constants below. Write an if-else statement that will print "Let's go!" if the restaurant's attributes match the group's dietary requirements, and otherwise will print "Sorry, we'll have to think of somewhere else."
 */
let hasFish = true
let hasPizza = false
let hasVegan = true

if (hasFish || hasPizza) && hasVegan {
    print("Let's go!")
} else {
    print("Sorry, we'll have to think of somewhere else.")
}
//:  Imagine you're trying to decide whether or not to go on a walk. You decide that you'll go on a walk if it's not raining or if it's 82 degress or warmer and sunny out. Create a constant `isNiceWeather` that is equal to an expression that evaluates to a boolean indicating whether or not the weather is nice enough for you to go for a walk. Write an if statement that will print "I'm going for a walk!" if the weather is nice.
let temp = 82
let isRaining = true
let isSunny = true
let isNiceWeather = !isRaining || (temp >= 82 && isSunny)
if isNiceWeather {
    print("I'm going for a walk!")
}
print("Exercise 5")
/*:
 ##                1.4.5

 
 You decide that you want your fitness tracker to have a feature that helps users stay inside specified heart rate zones while they are working out. You'll display a message to the user telling them to go a little faster to increase their heart rate if they are below the target, tell them that they are spot on if they are in the target, and tell them to slow it down a little if they are over the target.
 
 Create constants `isInTarget`, `isBelowTarget`, and `isAboveTarget` that equal expressions that evaluate to whether or not `currentHR` is between the lower and upper bounds, below the lower bound, and above the upper bound, respectively. Then write an if-else-if statement that will print "You're right on track!" if the user is inside the target zone, "You're doing great, but try to push it a bit!" if the user is below the target zone, and "You're on fire! Slow it down just a bit." if the user is above the target zone.
 */
let targetLowerBound = 120
let targetUpperBound = 150
let currentHRE5 = 147
let isInTarget = currentHRE5 >= targetLowerBound && currentHR <= targetUpperBound
let isBelowTarget = currentHRE5 < targetLowerBound
let isAboveTarget = currentHRE5 > targetUpperBound

if isInTarget {
    print("You're right on track!")
} else if isBelowTarget {
    print("You're doing great, but try to push it a bit!")
} else {
    print("You're on fire! Slow it down just a bit.")
}
print("Exercise 6")
/*:
 ##                1.4.6
 Imagine you're on a baseball team nearing the end of the season. Create a `leaguePosition` constant with a value of 1. Using a `switch` statement, print "Champions!" if the `leaguePosition` is 1, "Runners up" if the value is 2, "Third place" if the value is 3, and "Bad season!" in all other cases.
 */
let leaguePosition = 1
switch leaguePosition {
case 1:
    print("Champions!")
case 2:
    print("Runners up")
case 3:
    print("Third place")
default:
    print("Bad season!")
}
//:  Write a new `switch` statement that prints "Medal winner" if `leaguePosition` is within the range of 1-3. Otherwise, print "No medal awarded."
switch leaguePosition {
case 1...3:
    print("Medal winner")
default:
    print("No medal awarded.")
}




print("Exercise 7")
/*:
 ##                1.4.7

 If you completed the Target Heart Rate exercise, you showed different statements to the user based on whether or not the user's heart rate was inside of a target zone. Now you decide to just tell them what zone they are in rather than tell them what zone to be in.
 
 Write a switch statement that will print different statements based on what range `currentHR` falls into. Below is a list of ranges and the associated statements
 
- 100-120: "You are in the Very Light zone. Activity in this zone helps with recovery."
- 121-140: "You are in the Light zone. Activity in this zone helps improve basice endurance and fat burning."
- 141-160: "You are in the Moderate zone. Activity in this zone helps improve aerobic fitness."
- 161-180: "You are in the Hard zone. Activity in this zone increases maximum performance capacity for shorter sessions."
- 181-200: "You are in the Maximum zone. Activity in this zone helps fit athletes develop speed."
 
 If `currentHR` is above the listed zones, print some kind of warning asking the user to slow down.
 */
let currentHR = 128
switch currentHR{
case 100...120:
    print("You are in the Very Light zone. Activity in this zone helps with recovery.")
case 121...140:
    print("You are in the Light zone. Activity in this zone helps improve basice endurance and fat burning.")
case 141...160:
    print("You are in the Moderate zone. Activity in this zone helps improve aerobic fitness.")
case 161...180:
    print("You are in the Hard zone. Activity in this zone increases maximum performance capacity for shorter sessions.")
case 181...200:
    print("You are in the Maximum zone. Activity in this zone helps fit athletes develop speed.")
default:
    if currentHR > 200{
        print("Warning!! Slow down!")
    }
}




print("Exercise 8")
/*:
 ##                1.4.8
 Refactor the code below so that `largest` is declared and assigned to in one line using the ternary operator.
 */
let number1 = 14
let number2 = 25

var largest: Int
largest = number1 > number2 ? number1 : number2



print("Exercise 9")
/*:
##                1.4.9

   The code below should look similar to code you wrote in the Fitness Decisions exercise. The if-else statement is actually unnecessary, and instead you can print either one statement or the other all on one line using the ternary operator. Go ahead and refactor the code below to do just that.
 */
let stepGoal = 1000
let steps = 398
steps < stepGoal / 2 ? print("Almost halfway!") : print("Over halfway!")
