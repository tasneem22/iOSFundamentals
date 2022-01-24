import UIKit
import Foundation


print("Unit 2: Collections")
print("Exercise 1")
/*:
 ##          2.5.1

 Assume you are an event coordinator for a community charity event and are keeping a list of who has registered. Create a variable `registrationList` that will hold strings. It should be empty after initialization.
 */
var registrationList: [String] = []
//:  Your friend Sara is the first to register for the event. Add her name to `registrationList` using the `append(_:)` method. Print the contents of the collection.
registrationList.append("Sara")
print(registrationList)

//:  Add four additional names into the array using the `+=` operator. All of the names should be added in one step. Print the contents of the collection.
registrationList += ["Roukaya", "Ahmed", "Henning May", "Abdullah"]
print(registrationList)
//:  Use the `insert(_:at:)` method to add `Charlie` into the array as the second element. Print the contents of the collection.
registrationList.insert("Charlie", at: 1)
print(registrationList)
//:  Somebody had a conflict and decided to transfer registration to someone else. Use array subscripting to change the sixth element to `Rebecca`. Print the contents of the collection.
registrationList[5] = "Rebecca"
print(registrationList)
//:  Call `removeLast()` on `registrationList`. If done correctly, this should remove `Rebecca` from the collection. Store the result of `removeLast()` into a new constant `deletedItem`, then print `deletedItem`.
let deletedItem = registrationList.removeLast()
print(deletedItem)
print("Exercise 2")
/*:
##          2.5.2
 
 Your fitness tracking app shows users a list of possible challenges, grouped by activity type (i.e. walking challenges, running challenges, calisthenics challenges, weightlifting challenges, etc.) A challenge could be as simple as "Walk 3 miles a day" or as intense as "Run 5 times a week."
 
 Using arrays of type `String`, create at least two lists, one for walking challenges, and one for running challenges. Each should have at least two challenges and should be initialized using an array literal. Feel free to create more lists for different activities.
 */
var runningChallenges = ["Run everyday", "Run for an hour"]
var walkingChallenges = ["Walk everyday", "Walk along the forest"]

//:  In your app you want to show all of these lists on the same screen grouped into sections. Create a `challenges` array that holds each of the lists you have created (it will be an array of arrays). Using `challenges`, print the first element in the second challenge list.
var challenges = [runningChallenges, walkingChallenges]
print(challenges[1][0])
//:  All of the challenges will reset at the end of the month. Use the `removeAll` to remove everything from `challenges`. Print `challenges`.
challenges.removeAll()
print(challenges)
//:  Create a new array of type `String` that will represent challenges a user has committed to instead of available challenges. It can be an empty array or have a few items in it.
var committedChallenges: [String] = []
//:  Write an if statement that will use `isEmpty` to check if there is anything in the array. If there is not, print a statement asking the user to commit to a challenge. Add an else-if statement that will print "The challenge you have chosen is <INSERT CHOSEN CHALLENGE>" if the array count is exactly 1. Then add an else statement that will print "You have chosen multiple challenges."
if committedChallenges.isEmpty {
    print("Commit to a challenge")
} else if committedChallenges.count == 1 {
    print("The challenge you have chosen is \(committedChallenges[0])")
} else {
    print("You have chosen multiple challenges.")
}

print("Exercise 3")
/*:
## Exercise - Dictionaries
 Create a variable `[String: Int]` dictionary that can be used to look up the number of days in a particular month. Use a dictionary literal to initialize it with January, February, and March. January contains 31 days, February has 28, and March has 31. Print the dictionary.
 */
var dictionary = ["January": 31, "February": 28, "March": 31]
print(dictionary)
//:  Using subscripting syntax to add April to the collection with a value of 30. Print the dictionary.
dictionary["April"] = 30
print(dictionary)
//:  It's a leap year! Update the number of days in February to 29 using the `updateValue(_:, forKey:)` method. Print the dictionary.
dictionary.updateValue(29, forKey: "February")
print(dictionary)
//:  Use if-let syntax to retrieve the number of days under "January." If the value is there, print "January has 31 days", where 31 is the value retrieved from the dictionary.
if let days = dictionary["January"] {
    print("January has \(days) days")
}
//:  Given the following arrays, create a new [String : [String]] dictionary. `shapesArray` should use the key "Shapes" and `colorsArray` should use the key "Colors." Print the resulting dictionary.
let shapesArray = ["Circle", "Square", "Triangle"]
let colorsArray = ["Red", "Green", "Blue"]

var secondDictionary = ["Shapes": shapesArray, "Colors": colorsArray]
print(secondDictionary)
//:  Print the last element of `colorsArray`, accessing it through the dictionary you've created. You'll have to use if-let syntax or the force unwrap operator to unwrap what is returned from the dictionary before you can access an element of the array.
if let element = secondDictionary["Colors"]?.last {
    print(element)
}

print("Exercise 4")
/*:
## App Exercise - Pacing
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 In previous app exercises you've written code to help users with run pacing. You decide that you could use a dictionary to let users store different paces that they regularly run at or do interval training with.
 Create a dictionary `paces` of type [String: Double] and assign it a dictionary literal with "Easy", "Medium", and "Fast" keys corresponding to values of 10.0, 8.0, and 6.0. These numbers correspond to mile pace in minutes. Print the dictionary.
 */
var paces = ["Easy": 10.0, "Medium": 8.0, "Fast": 6.0]
print(paces)
//:  Add a new key/value pair to the dictionary. The key should be "Sprint" and the value should be 4.0. Print the dictionary.
paces["Sprint"] = 4.0
print(paces)
//:  Imagine the user in question gets faster over time and decides to update his/her pacing on runs. Update the values of "Medium" and "Fast" to 7.5 and 5.8, respectively. Print the dictionary.
paces.updateValue(7.5, forKey: "Medium")
paces.updateValue(5.8, forKey: "Fast")
print(paces)
//:  Imagine the user in question decides not to store "Sprint" as one his/her regular paces. Remove "Sprint" from the dictionary. Print the dictionary.
paces.removeValue(forKey: "Sprint")
print(paces)
//:  When a user chooses a pace, you want the app to print a statement stating that it will keep him/her on pace. Imagine a user chooses "Medium." Accessing the value from the dictionary, print a statement saying "Okay! I'll keep you at a <INSERT PACE VALUE HERE> minute mile pace."
if let value = paces["Medium"] {
    print("Okay! I'll keep you at a \(value) minute mile pace.")
}
