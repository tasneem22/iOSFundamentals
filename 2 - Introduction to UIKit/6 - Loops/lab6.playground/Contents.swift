import UIKit
import Foundation



print("Unit 2: Loops")
print("Exercise 1")
/*:
## Exercise - For-In Loops
 
 Create a for-in loop that loops through values 1 to 100, and prints each of the values.
 */
for index in 1...100 {
    print(index)
}
//:  Create a for-in loop that loops through each of the characters in the `alphabet` string below, and prints each of the values alongside the index.
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

for (index, letter) in alphabet.enumerated() {
    print(index, letter)
}
//:  Create a `[String: String]` dictionary, where the keys are names of states and the values are their capitals. Include at least three key/value pairs in your collection, then use a for-in loop to iterate over the pairs and print out the keys and values in a sentence.
let states = ["Alabama": "Montgomery", "Alaska": "Juneau", "Arizona": "Phoenix"]
for (state, capital) in states {
    print("\(capital) is the capital of \(state) state")
}
print("Exercise 2")
/*:
## App Exercise - Movements
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 Suppose your app contains a list of different movements that can be tracked. You want to display each item in the list to the user. Use a for-in loop to loop through `movements` below and print each movement.
 */
let movements: [String] = ["Walking", "Running", "Swimming", "Cycling", "Skiing", "Climbing"]

for movement in movements {
    print(movement)
}
//:  Now suppose your app uses a dictionary to keep track of your average heart rate during each of the movements in `movements`. The keys correspond to the movements listed above, and the values correspond to the average heart rate that your fitness tracker has monitored during the given movement. Loop through `movementHeartRates` below, printing statements telling the user his/her average heart rate during each exercise.
var movementHeartRates: [String: Int] = ["Walking": 85, "Running": 120, "Swimming": 130, "Cycling": 128, "Skiing": 114, "Climbing": 129]

for (movement, heartRate) in movementHeartRates {
    print("Average heart rate for \(movement) is \(heartRate)")
}
print("Exercise 3")
import Foundation
/*:
## Exercise - While Loops
 
 Create a while loop that simulates rolling a 6-sided dice repeatedly until a 1 is rolled. After each roll, print the value. (Hint: use `Int.random(in: 1...6)` to generate a random number between 1 and 6).
 */
var roll = 0
while roll != 1 {
    roll = Int.random(in: 1...6)
    print("You have got a \(roll)")
}
print("Exercise 4")
import Foundation
/*:
## App Exercise - Running Cadence
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 You may want your fitness tracking app to help runners track and improve their cadence. Running cadence is the number of steps a runner takes in a minute. To help with this, you decide to let the user input a cadence, after which your app will play a sound at each interval they need to take another step.
 
 For this exercise, you'll simulate a "test run" of the cadence feature of your app. Use a while loop to print "Take a step" to the console 10 times. Once you've successfully printed "Take a step" to the console 10 times, add the following code to the end of your while loop: `Thread.sleep(forTimeInterval: 60/cadence)`. This will put a pause between each itertion of the while loop so that the print statements actually occur at the proper cadence.
 */
let cadence: Double = 180
var testSteps = 0

while testSteps < 10 {
    print("Take a step")
    testSteps += 1
    Thread.sleep(forTimeInterval: 60/cadence)
}

//:  Recreate the above cadence example using a repeat-while loop.
testSteps = 0

repeat {
    print("Take a step")
    testSteps += 1
    Thread.sleep(forTimeInterval: 60/cadence)
} while testSteps < 10
print("Exercise 5")
/*:
## Exercise - Control Transfer Statements
 
 Create a for-in loop that will loop through `alphabet`. Inside the loop, print every other letter by continuing to the next iteration if you are on a letter you do not wish to print. (Hint: You can use the `isMultiple(of:)` method on `Int` to only print even indexed characters).
 */
for (index, letter) in alphabet.enumerated() where index % 2 == 0 {
    print(letter)
}
//:  Create a `[String: String]` dictionary where the keys are names of states and the values are their capitals. Include at least three key/value pairs in your collection, with one of them being your home state. Now loop through this dictionary again, printing out the keys and values in a sentence, but add an if statement that will check if the current iteration is your home state. If it is, print("I found my home!") and break out of the loop.
let statesE5 = ["Alabama": "Montgomery", "Alaska": "Juneau", "Arizona": "Phoenix"]
for (state, capital) in statesE5 {
    print("\(capital) is the capital of \(state) state")
    if state == "Alaska" {
        print("I found my home!")
        break
    }
}
print("Exercise 6")
/*:
## App Exercise - Finding Movements
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 You decide you want your app's users to be able to put in a heart rate range they would like to hit, and then you want the app to suggest movements where historically the user has reached that heart rate range. The dictionary `movementHeartRates` below contains keys corresponding to the movements that the app has tracked, and values corresponding to the average heart rate of the user that your fitness tracker has monitored historically during the given movement.
 Loop through `movementHeartRates` below and if the heart rate doesn't fall between `lowHR` and `highHR`, continue to the next movement and heart rate. Otherwise, print "You could go <INSERT MOVEMENT HERE>."
 */
let lowHR = 110
let highHR = 125
var movementHeartRatesE6: [String: Int] = ["Walking": 85, "Running": 120, "Swimming": 130, "Cycling": 128, "Skiing": 114, "Climbing": 129]

for (movement, heartRate) in movementHeartRatesE6 {
    if (lowHR...highHR) ~= heartRate {
        print("You could go \(movement)")
    }
}


