import UIKit


print("Unit 1: Constants")
print("Exercise 1")

/*
 
                1.2.1
Declare a constant called `friends` to represent the number of friends you have on social media. Give it a value between 50 and 1000. Print out the value by referencing your constant.
*/
let friends = 375
print("My number of friends on Facebook is \(friends)")
//:  Now assume you go through and remove friends that aren't active on social media. Attempt to update your `friends` constant to a lower number than it currently is. Observe what happens and then move to the next step.

//friends = 300


//:  Does the above code compile? Why not? Print your explanation to the console using the `print` function. Go back and delete your line of code that updates the `friends` constant to a lower number so that the playground will compile properly.
print("Updating 'friends' won't compile because it is a constant which can be declared and assigned only once. 'let' keyword does not allow you to reassign a value.")


print("Exercise 2")
/*
                1.2.2
These exercises reinforce Swift concepts in the context of a fitness tracking app.
Your fitness tracking app needs to know goal number of steps per day. Create a constant `goalSteps` and set it to 10000.
*/
let goalSteps = 10000

//:  Use two `print` functions to print two separate lines to the console. The first line should say "Your step goal for the day is:", and the second line should print the value of `goalSteps` by referencing your constant.
print("Your step goal for the day is:")
print(goalSteps)

print("Exercise 3")
/*:
##               1.2.3
 
 Declare a variable `schooling` and set it to the number of years of school that you have completed. Print `schooling` to the console.
 */
var schooling = 11
print(schooling)
//:  Now imagine you just completed an additional year of school, and update the `schooling` variable accordingly. Print `schooling` to the console.
schooling += 1
print(schooling)

//:  Does the above code compile? Why is this different than trying to update a constant? Print your explanation to the console using the `print` function.
print("We can update 'schooling' because it is defined as a variable. The 'var' keyword allows us to reassign new value of the same type. ")

print("Exercise 4")
/*:
##                  1.2.4
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
Create a variable called `steps` that will keep track of the number of steps you take throughout the day. Set its initial value to 0 to represent the step count first thing in the morning. Print `steps` to the console.
 */
var steps: Int = 0
print(steps)
//:  Now assume the tracker has been keeping track of steps all morning, and you want to show the user the latest step count. Update `steps` to be 2000. Print `steps` to the console. Then print "Good job! You're well on your way to your daily goal."
steps = 2000
print(steps)
print("Good job! You're well on your way to your daily goal.")


print("Exercise 5")
/*:
##              1.2.5
 
 Imagine you're creating a simple photo sharing app. You want to keep track of the following metrics for each post:
- Number of likes: the number of likes that a photo has received
- Number of comments: the number of comments other users have left on the photo
- Year created: The year the post was created
- Month created: The month the post was created represented by a number between 1 and 12
- Day created: The day of the month the post was created
 
 For each of the metrics above, declare either a constant or a variable and assign it a value corresponding to a hypothetical post. Be sure to use proper naming conventions.
 */
var numberOfLikes: Int = 5
print("Number of likes may change if new users like the photo. So, it's basically variable ")
var numberOfComments: Int = 1
print("Number of comments may change if a user left a few more comments on the photo. So, it's variable")
let yearCreated: Int = 2015
print("it's not allowed to update the post creation date, so it's a constant")
let monthCreated: Int = 2
print("same as the year, it's the create date, so it's constant")
let dayCreated: Int = 8
print("same as above")



print("Exercise 6")
/*:
##              1.2.6
 
These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 There are all sorts of things that a fitness tracking app needs to keep track of in order to display the right information to the user. Similar to the last exercise, declare either a constant or a variable for each of the following items, and assign each a sensible value. Be sure to use proper naming conventions.
 
- Name: The user's name
- Age: The user's age
- Number of steps taken today: The number of steps that a user has taken today
- Goal number of steps: The user's goal for number of steps to take each day
- Average heart rate: The user's average heart rate over the last 24 hours
 */
let name = "Tasneem"
print("I like my name")

var age = 20
print("age increases yearly")

var stepsToday = 300
print("Steps number is changing during the day, so they are variable")
let goalNumberSteps = 1000
print("the goal is fixed for all days")


var averageHeartRate = 80
print("Average rate is calculating over the last 24 hours. so it is a variable.")
/*:
 Now go back and add a line after each constant or variable declaration. On those lines, print a statement explaining why you chose to declare the piece of information as a constant or variable.
 */



print("Exercise 7")
/*:
                1.2.7
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking the variable name.
 */
var firstDecimal = 24.42
var secondDecimal = 5.67
//:  Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var trueOrFalse = true
print("It won't compile bacause these variables have different types. Swift enforces the type safety.")
//:  Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var stringVariable = "I am string"
print("Again it won't compile bacause these variables have different types. Swift enforces the type safety.")
//:  Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var wholeNumberValue = 10
print("It won't compile bacause 'wholeNumberValue' has type 'Int' while 'firstDecimal' has type 'Double'. Swift enforces the type safety even if two variables represent a number, but have different types.")

print("Exercise 8")
/*:
                    1.2.8
 You have declared a number of constants and variables to keep track of fitness information. Declare one more variable with a boolean value called `hasMetStepGoal`.
 */
var hasMetStepGoal: Bool

//:  When you declared a constant for goal number of steps and a variable for current step count, you likely assigned each a value in the thousands. This can be difficult to read. Redeclare this constant and variable and, when assigning each a value in the thousands, format the number so that it is more readable.
var readableStepsToday = 7_654
let readablegoalNumberSteps = 10_000

print("Exercise 9")
/*:
##              1.2.9
 
 Declare a variable called `name` of type `String`, but do not give it a value. Print `name` to the console. Does the code compile? Remove any code that will not compile.
 */
var Name: String
print("No, it doesn't compile because we haven't assigned a value to the variable. Once the value is assigned, the variable becomes available.")
//:  Now assign a value to `name`, and print it to the console
Name = "Tasneem"
print(Name)
//:  Declare a variable called `distanceTraveled` and set it to 0. Do not give it an explicit type.
var distanceTraveled: Double = 0

//:  Now assign a value of 54.3 to `distanceTraveled`. Does the code compile? Go back and set an explicit type on `distanceTraveled` so the code will compile.
distanceTraveled = 54.3
print("Initially, it won't compile because a compiler automatically assigned a type 'Int'. We can't assign a number with a floating point beacause such number is represented as 'Double'. So, we need to explicitly declare a 'Double' type of `distanceTraveled` variable to avoid type conflicts, or just use casting")


print("Exercise 10")
/*:
##              1.2.10
 You decide that your fitness tracking app should show the user what percentage of his/her goal has been achieved so far today. Declare a variable called `percentCompleted` and set it to 0. Do not explicity assign it a type.
 */
var percentCompleted: Double = 0

//:  Imagine that partway through the day a user has taken 3,467 steps out of the 10,000 step goal. This means he/she is 34.67% of the way to his/her goal. Assign 34.67 to `percentCompleted`. Does the code compile? Go back and explicity assign a type to `percentCompleted` that will allow the code to compile.
percentCompleted = 34.67
print("Initially, it won't compile because 'percentCompleted' had 'Int' type and we were trying to assign 'Double' value.")
