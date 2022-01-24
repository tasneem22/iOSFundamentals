import UIKit
import Foundation


print("Unit 2: Functions")
print("Exercise 1")
/*:
##          2.2.1
 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself() {
    print("Hi! My name is Tasneem. I'm 3rd-year student of Innopolis University.")
}

introduceMyself()
//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.

func magicEightBall(_ number: Int) {
    switch number{
    case 1:
        print("First")
    case 2:
        print("Second")
    case 3:
        print("Third")
    case 4:
        print("Fourth")
    default:
        print("Integer")
    }
}

let randomNum = Int.random(in: 0...4)

magicEightBall(randomNum)
magicEightBall(Int.random(in: 0...4))
magicEightBall(Int.random(in: 0...4))
magicEightBall(Int.random(in: 0...4))
magicEightBall(Int.random(in: 0...4))

print("Exercise 2")
/*:
##          2.2.2

 
 As you may have guessed, functions are key to making your app work. For example, in every exercise dealing with step count until now, you have simply assigned a number of steps to a `steps` variable. This isn't very realistic seeing as the number of steps you take increments one at a time and continues changing throughout the day.
 
 A reoccurring process like this is a perfect candidate for a function. Write a function called `incrementSteps` after the declaration of `steps` below that will increment `steps` by one and then print its value. Call the function multiple times and observe the printouts.
 */
var steps = 0
func incrementSteps() {
    steps+=1
    print(steps)
}
incrementSteps()
incrementSteps()
incrementSteps()
incrementSteps()
//:  Similarly, if you want to regularly provide progress updates to your user, you can put your control flow statements that check on progress into a function. Write a function called `progressUpdate` after the declaration of `goal` below. The function should print "You're off to a good start." if `steps` is less than 10% of `goal`, "You're almost halfway there!" if `steps` is less than half of `goal`, "You're over halfway there!" if `steps` is less than 90% of `goal`, "You're almost there!" if `steps` is less than `goal`, and "You beat your goal!" otherwise. Call the function and observe the printout.
let goal = 10000
func progressUpdate(){
    if steps < goal/10 {
        print("You're off to a good start.")
    } else if steps < goal/2 {
        print("You're almost halfway there!")
    } else if steps < goal * 9 / 10 {
        print("You're over halfway there!")
    } else if steps < goal {
        print("You're almost there!")
    } else {
        print("You beat your goal!")
    }
}
progressUpdate()

print("Exercise 3")
/*:
##              2.2.3
 
 Write a new introduction function called `introduction`. It should take two `String` parameters, `name` and `home`, and one `Int` parameter, `age`. The function should print a brief introduction. I.e. if "Mary," "California," and 32 were passed into the function, it might print "Mary, 32, is from California." Call the function and observe the printout.
 */
func introduction(name: String, home: String, age: Int){
    print("\(name), \(age), is from \(home).")
}
introduction(name: "Tasneem", home: "2nd Dorm", age: 20)
//:  Write a function called `almostAddition` that takes two `Int` arguments. The first argument should not require an argument label. The function should add the two arguments together, subtract 2, then print the result. Call the function and observe the printout.
func almostAddition(_ firstNumber: Int, secondNumber: Int) {
    print(firstNumber + secondNumber - 2)
}

almostAddition(4, secondNumber: 5)
//:  Write a function called `multiply` that takes two `Double` arguments. The function should multiply the two arguments and print the result. The first argument should not require a label, and the second argument should have an external label, `by`, that differs from the internal label. Call the function and observe the printout.
func multiply(_ firstNumber: Double, by secondNumber: Double) {
    print(firstNumber * secondNumber)
}
multiply(3, by: 4.6)

print("Exercise 4")
/*:
##          2.3.4
  
 In many cases you want to provide input to a function. For example, the progress function you wrote in the Functioning App exercise might be located in an area of your project that doesn't have access to the value of `steps` and `goal`. In that case, whenever you called the function, you would need to provide it with the number of steps that have been taken and the goal for the day so it can print the correct progress statement.
 
 Rewrite the function `progressUpdate`, only this time give it two parameters of type `Int` called `steps` and `goal`, respectively. Like before, it should print "You're off to a good start." if steps is less than 10% of goal, "You're almost halfway there!" if steps is less than half of goal, "You're over halfway there!" if steps is less than 90% of goal, "You're almost there!" if steps is less than goal, and "You beat your goal!" otherwise. Call the function and observe the printout.
 
 Call the function a number of times, passing in different values of `steps` and `goal`. Observe the printouts and make sure what is printed to the console is what you would expect for the parameters passsed in.
 */
func progressUpdate(steps: Int, goal: Int) {
    if steps < goal/10 {
        print("You're off to a good start.")
    } else if steps < goal/2 {
        print("You're almost halfway there!")
    } else if steps < goal * 9 / 10 {
        print("You're over halfway there!")
    } else if steps < goal {
        print("You're almost there!")
    } else {
        print("You beat your goal!")
    }
}

progressUpdate(steps: 1, goal: 20)
progressUpdate(steps: 20, goal: 50)
progressUpdate(steps: 60, goal: 100)
progressUpdate(steps: 920, goal: 1000)
progressUpdate(steps: 11, goal: 10)
//:  Your fitness tracking app is going to help runners stay on pace to reach their goals. Write a function called pacing that takes four `Double` parameters called `currentDistance`, `totalDistance`, `currentTime`, and `goalTime`. Your function should calculate whether or not the user is on pace to hit or beat `goalTime`. If yes, print "Keep it up!", otherwise print "You've got to push it just a bit harder!"
func pacingE4(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double) {
    let currentVelocity = currentDistance / currentTime
    let remainingDistance = totalDistance - currentDistance
    let requiredTime = remainingDistance / currentVelocity
    let remainingTime = goalTime - currentTime
    if requiredTime <= remainingTime {
        print("Keep it up!")
    } else {
        print("You've got to push it just a bit harder!")
    }
}
pacingE4(currentDistance: 5, totalDistance: 10, currentTime: 4, goalTime:10)

print("Exercise 5")
/*:
## Exercise - Return Values
 Write a function called `greeting` that takes a `String` argument called name, and returns a `String` that greets the name that was passed into the function. I.e. if you pass in "Dan" the return value might be "Hi, Dan! How are you?" Use the function and print the result.
 */
func greeting(_ name: String) -> String{
    return "Hi, \(name)! How are you?"
}
print(greeting("Tasneem"))
//:  Write a function that takes two `Int` arguments, and returns an `Int`. The function should multiply the two arguments, add 2, then return the result. Use the function and print the result.
func almostMultiply(firstNumber: Int, secondNumber: Int) -> Int {
    firstNumber * secondNumber + 2
}
print(almostMultiply(firstNumber: 4, secondNumber: 5))

print("Exercise 6")
/*:
##              2.2.6

 
 One principle that can help in debugging and maintaining code is abstraction. For example, in your fitness tracking app some of your existing functions have been written to both perform a calculation and print a message. But it's very possible that you'll decide to change either the calculation or the message in the future. It will be easier to go back and change this if you separate the calculation from the message.
 As an example, write a function that only does a portion of what your previous `pacing` function did. This function will be called `calculatePace`. It should take three `Double` arguments called `currentDistance`, `totalDistance`, and `currentTime`, and should return a `Double` that will represent the time at which the user will finish the run based on the user's current distance and time. call the function and print the return value.
 */
func calculatePace(currentDistance: Double, totalDistance: Double, currentTime: Double) -> Double {
    let currentVelocity = currentDistance / currentTime
    return totalDistance / currentVelocity
}
print(calculatePace(currentDistance: 5, totalDistance: 10, currentTime: 6))
//:  Now write a function called `pacing` that takes four `Double` arguments called `currentDistance`, `totalDistance`, `currentTime`, and `goalTime`. The function should also return a `String`, which will be the message to show the user. The function should call `calculatePace`, passing in the appropriate values, and capture the return value. The function should then compare the returned value to `goalTime` and if the user is on pace return "Keep it up!", and return "You've got to push it just a bit harder!" otherwise. Call the function and print the return value.
func pacing(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double) -> String {
    let timeToRun = calculatePace(currentDistance: currentDistance, totalDistance: totalDistance, currentTime: currentTime)
    return timeToRun <= goalTime ? "Keep it up!" : "You've got to push it just a bit harder!"
}
print(pacing(currentDistance: 5, totalDistance: 10, currentTime: 6, goalTime: 10))
