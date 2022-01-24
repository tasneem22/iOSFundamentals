import UIKit
import Foundation


print("Unit 2: Structures")
print("Exercise 1")
/*:
##          2.3.1
 
 Imagine you are creating an app that will monitor location. Create a `GPS` struct with two variable properties, `latitude` and `longitude`, both with default values of 0.0.
 */
struct GPS {
    var latitude = 0.0
    var longitude = 0.0
}
//:  Create a variable instance of `GPS` called `somePlace`. It should be initialized without supplying any arguments. Print out the latitude and longitude of `somePlace`, which should be 0.0 for both.
var somePlace = GPS()
print(somePlace.latitude)
print(somePlace.longitude)
//:  Change `somePlace`'s latitude to 51.514004, and the longitude to 0.125226, then print the updated values.
somePlace.latitude = 51.514004
somePlace.longitude = 0.125226
print(somePlace.latitude)
print(somePlace.longitude)
//:  Now imagine you are making a social app for sharing your favorite books. Create a `Book` struct with four variable properties: `title`, `author`, `pages`, and `price`. The default values for both `title` and `author` should be an empty string. `pages` should default to 0, and `price` should default to 0.0.
struct Book {
    var title = ""
    var author = ""
    var pages = 0
    var price = 0.0
}
//:  Create a variable instance of `Book` called `favoriteBook` without supplying any arguments. Print out the title of `favoriteBook`. Does it currently reflect the title of your favorite book? Probably not. Change all four properties of `favoriteBook` to reflect your favorite book. Then, using the properties of `favoriteBook`, print out facts about the book.
var favoriteBook = Book()
print(favoriteBook.title)
favoriteBook.title = "Algorithms to Live By"
favoriteBook.author = "Brian Christian & Tom Griffiths"
favoriteBook.pages = 368
favoriteBook.price = 21.75
print("I listened to 1/4 of book '\(favoriteBook.title)' written by \(favoriteBook.author) which has \(favoriteBook.pages) pages and costs \(favoriteBook.price)$.")

print("Exercise 2")
/*:
##          2.3.2

 Your fitness tracking app wouldn't be much of a fitness tracker if it couldn't help users track their workouts. In order to track a user's run, you'll need to have some kind of data structure that can hold information about the workout. For the sake of simplicity, you'll focus specifically on running workouts.
 
 Create a `RunningWorkout` struct. It should have variables properties for `distance`, `time`, and `elevation`. All three properties should have default values of 0.0.
 */
struct RunningWorkout {
    var distance = 0.0
    var time = 0.0
    var elevation = 0.0
}
//:  Create a variable instance of `RunningWorkout` called `firstRun` without supplying any arguments. Print out all three properties of `firstRun`. This is a good example of when using default values is appropriate, seeing as all running workouts start with a distance, time, and elevation change of 0.
var firstRun = RunningWorkout()
print(firstRun.distance)
print(firstRun.time)
print(firstRun.elevation)
//:  Now imagine that throughout the course of the run, you go a distance of 2,396 meters in 15.3 minutes, and gain 94 meters of elevation. Update the values of `firstRun`'s properties accordingly. Print a statement about your run using the values of each property.
firstRun.distance = 1_000
firstRun.time = 15.0
firstRun.elevation = 70
print("Today I ran \(firstRun.distance) meters down the road, which has \(firstRun.elevation) meters of elevation, in \(firstRun.time) minutes.")

print("Exercise 3")
/*:
##              2.3.3
 Make a `Laptop` struct with three variable properties, `screenSize` of type `Int`, `repairCount` of type `Int`, and `yearPurchased` of type `Int`. Give `screenSize` a default value of `13` and `repairCount` a default value of `0`, and leave `yearPurchased` without a default value. Declare two instances of `Laptop`, using the two provided memberwise initializers.
 */
struct Laptop {
    var screenSize: Int = 13
    var repairCount: Int = 0
    var yearPurchased: Int
}
var macBookPro = Laptop(screenSize: 13, repairCount: 0, yearPurchased: 2020)
var hp = Laptop(yearPurchased: 2015)
/*:
 Make a `Height` struct with two variable properties, `heightInInches` and `heightInCentimeters`. Both should be of type `Double`.
 
 Create two custom initializers. One initializer will take a `Double` argument that represents height in inches. The other initializer will take a `Double` argument that represents height in centimeters. Each initializer should take the passed in value and use it to set the property that corresponds to the unit of measurement passed in. It should then set the other property by calculating the right value from the passed in value. Hint: *1 inch = 2.54 centimeters*.
 - Example: If you use the initializer for inches to pass in a height of 65, the initializer should set `heightInInches` to 65 and `heightInCentimeters` to 165.1.
 */
struct Height {
    var heightInInches: Double
    var heightInCentimeters: Double
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches * 2.54
    }
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters / 2.54
    }
}
//:  Now create a variable instance of `Height` called `someonesHeight`. Use the initializer for inches to set the height to 65. Print out the property for height in centimeters and verify that it is equal to 165.1.
var someonesHeight = Height(heightInInches: 62.2)
print(someonesHeight.heightInCentimeters)
//:  Now create a variable instance of `Height` called `myHeight` and initialize it with your own height. Verify that both `heightInInches` and `heightInCentimeters` are accurate.
var myHeight = Height(heightInCentimeters: 158)
print(myHeight.heightInCentimeters)
print(myHeight.heightInInches)

print("Exercise 4")
/*:
##          2.3.4

 
 For most apps you'll need to have a data structure to hold information about a user. Create a `User` struct that has properties for basic information about a user. At a minimum, it should have properties to represent a user's name, age, height, weight, and activity level. You could do this by having `name` be a `String`, `age` be an `Int`, `height` and `weight` be of type `Double`, and `activityLevel` be an `Int` that will represent a scoring 1-10 of how active they are. Implement this now.
 */
struct User {
    var name: String
    var age: Int
    var height: Double
    var weight: Double
    var activityLevel: Int
}
/*:
 In previous app exercises, you've worked with distance in the fitness tracking app example as a simple number. However, distance can be represented using a variety of units of measurement. Create a `Distance` struct that will represent distance in various units of measurement. At a minimum, it should have a `meters` property and a `feet` property. Create a custom initializer corresponding to each property (i.e. if you only have the two properties for meters and feet you will then have two initializers) that will take in a distance in one unit of measurement and assign the correct value to both units of measurements. Hint: *1 meter = 3.28084 feet*.
 - Example: If you use the initializer for meters and pass in a distance of 1600, the initializer should set `meters` to 1600 and `feet` to 5249.344.
 */
struct Distance {
    var meters: Double
    var feet: Double
    
    init(meters: Double){
        self.meters = meters
        self.feet = meters * 3.28084
    }
    
    init(feet: Double){
        self.feet = feet
        self.meters = feet / 3.28084
    }
}
//:  Now create an instance of `Distance` called `mile`. Use the initializer for meters to set the distance to 1600. Print out the property for feet and verify that it is equal to 5249.344.
var mile = Distance(meters: 1600)
print(mile.feet)
//:  Now create another instance of `Distance` and give it some other distance. Ensure that both properties are set correctly.
var anotherMile = Distance(feet: 5249.344)
print(mile.meters)
print(mile.feet)

print("Exercise 5")
/*:
##          2.3.5

 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct BookE5 {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func description() {
        print("This is '\(title)' written by \(author). It has \(pages) pages and costs \(price)")
    }
}

var algorithmsToLiveBy = BookE5(title: "Algorithms to Live By", author: "Brian Christian & Tom Griffiths", pages: 368, price: 21.50)
algorithmsToLiveBy.description()
//:  A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func like() {
        self.likes += 1
    }
}

var newPost = Post(message: "Hey, Swift ;)", likes: 0, numberOfComments: 0)
print(newPost.likes)
newPost.like()
print(newPost.likes)

print("Exercise 6")
/*:
##          2.3.6

 A `RunningWorkout` struct has been created for you below. Add a method on `RunningWorkout` called `postWorkoutStats` that prints out the details of the run. Then create an instance of `RunningWorkout` and call `postWorkoutStats()`.
 */
struct RunningWorkoutE6 {
    var distance: Double
    var time: Double
    var elevation: Double
    
    func postWorkoutStats() {
        print("You ran \(distance) meters down the road, which has \(elevation) meters of elevation, in \(time) minutes.")
    }
}

var todayRunning = RunningWorkoutE6(distance: 400, time: 5, elevation: 2)
todayRunning.postWorkoutStats()
//:  A `Steps` struct has been created for you below, representing the day's step-tracking data. It has the goal number of steps for the day and the number of steps taken so far. Create a method on `Steps` called `takeStep` that increments the value of `steps` by one. Then create an instance of `Steps` and call `takeStep()`. Print the value of the instance's `steps` property before and after the method call.
struct StepsE6 {
    var steps: Int
    var goal: Int
    
    mutating func takeStep() {
        self.steps += 1
    }
}

var mySteps = StepsE6(steps: 12, goal: 200)
print(mySteps.steps)
mySteps.takeStep()
print(mySteps.steps)

print("Exercise 7")
/*:
##          2.3.7

 The `Rectangle` struct below has two properties, one for width and one for height. Add a computed property that computes the area of the rectangle (i.e. width * height). Create an instance of `Rectangle` and print the `area` property.
 */
struct Rectangle {
    var width: Int
    var height: Int
    var area: Int {
        width * height
    }
}

var room = Rectangle(width: 3, height: 4)
print(room.area)
/*:
 In the `Height` struct below, height is represented in both inches and centimeters. However, if `heightInInches` is changed, `heightInCentimeters` should also adjust to match it. Add a `didSet` to each property that will check if the other property is what it should be, and if not, sets the proper value. If you set the value of the other property even though it already has the right value, you will end up with an infinite loop of each property setting the other.
 
 Create an instance of `Height` and then change one of its properties. Print out the other property to ensure that it was adjusted accordingly.
 */
struct HeightE7 {
    var heightInInches: Double {
        didSet {
            if self.heightInCentimeters != heightInInches*2.54 {
                self.heightInCentimeters = heightInInches*2.54
            }
        }
    }
    
    var heightInCentimeters: Double {
        didSet {
            if self.heightInInches != heightInCentimeters/2.54 {
                self.heightInInches = heightInCentimeters/2.54
            }
        }
    }
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches*2.54
    }
    
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters/2.54
    }
}

var myHeightE7 = HeightE7(heightInCentimeters: 158)
print(myHeightE7.heightInInches)
myHeightE7.heightInCentimeters = 160
print(myHeightE7.heightInInches)
myHeightE7.heightInInches = 62.2
print(myHeightE7.heightInCentimeters)

print("Exercise 8")
/*:
##          2.3.8

 The `RunningWorkout` struct below holds information about your users' running workouts. However, you decide to add information about average mile time. Add a computed property called `averageMileTime` that uses `distance` and `time` to compute the user's average mile time. Assume that `distance` is in meters and 1600 meters is a mile.
 
 Create an instance of `RunningWorkout` and print the `averageMileTime` property. Check that it works properly.
 */
struct RunningWorkoutE8 {
    var distance: Double
    var time: Double
    var elevation: Double
    var averageMileTime: Double {
        distance/time
    }
}

var myRunning = RunningWorkoutE8(distance: 10, time: 2, elevation: 4)
print(myRunning.averageMileTime)
/*:
 In other app exercises, you've provided encouraging messages to the user based on how many steps they've completed. A great place to check whether or not you should display something to the user is in a property observer.
 
 In the `Steps` struct below, add a `willSet` to the `steps` property that will check if the new value is equal to `goal`, and if it is, prints a congratulatory message. Create an instance of `Steps` where `steps` is 9999 and `goal` is 10000, then call `takeStep()` and see if your message is printed to the console.
 */
struct Steps {
    var steps: Int {
        willSet {
            if newValue == self.goal {
                print("Congrats! You reached your goal!")
            }
        }
    }
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
}

var todaySteps = Steps(steps: 999, goal: 1000)
todaySteps.takeStep()

print("Exercise 9")
/*:
##          2.3.9

 Imagine you have an app that requires the user to log in. You may have a `User` struct similar to that shown below. However, in addition to keeping track of specific user information, you might want to have a way of knowing who the current logged in user is. Create a `currentUser` type property on the `User` struct below and assign it to a `user` object representing you. Now you can access the current user through the `User` struct. Print out the properties of `currentUser`.
 */
struct UserE9 {
        
    var userName: String
    var email: String
    var age: Int
    
    static var currentUser = UserE9(userName: "Tasneem", email: "tasneemsherif@email.com", age: 20)
    
    static func logIn(user: UserE9){
        self.currentUser = user
        print("\(user.userName) has just logged in")
    }
}

print(UserE9.currentUser.userName)
print(UserE9.currentUser.email)
print(UserE9.currentUser.age)
/*:
 There are other properties and actions associated with a `User` struct that might be good candidates for a type property or method. One might be a method for logging in. Go back and create a type method called `logIn(user:)` where `user` is of type `User`. In the body of the method, assign the passed in user to the `currentUser` property, and print out a statement using the user's userName saying that the user has logged in.
 
 Below, call the `logIn(user:)` method and pass in a different `User` instance than what you assigned to currentUser above. Observe the printout in the console.
 */
UserE9.logIn(user: UserE9(userName: "Tasneem", email: "t.samir@innopolis.university", age: 20))

print("Exercise 10")
/*:
##          2.3.10

 In another exercise, you added a computed property representing the average mile time from a run. However, you may want to have a calculator of sorts that users can use before their run to find out what mile time they need to average in order to run a given distance in a given time. In this case it might be helpful to have a type method on `RunningWorkout` that can be accessed without having an instance of `RunningWorkout`.
 Add to `RunningWorkout` a type method `mileTimeFor(distance:time:)` where `distance` and `time` are both of type `Double`. This method should have a return value of type `Double`. The body of the method should calculate the average mile time needed to cover the passed in distance in the passed in time. Assume that distance is in meters and that one mile is 1600 meters.
 Call the method from outside of the struct and print the result to ensure that it works properly.
 */
struct RunningWorkoutE10 {
    var distance: Double
    var time: Double
    var elevation: Double
    static var meterInFeet = 3.28084
    static var mileInMeters = 1600.0
    
    static func mileTimeFor(distance: Double, time: Double) -> Double{
        return distance / time
    }
}

print(RunningWorkoutE10.mileTimeFor(distance: 5, time: 5))
//:  It may be helpful to have a few type properties on `RunningWorkout` representing unit conversions (i.e. meters to mile, feet to meters, etc.). Go back and add a type property for `meterInFeet` and assign it 3.28084. Then add a type property for `mileInMeters` and assign it 1600.0. Print both of these values below.
print(RunningWorkoutE10.meterInFeet)
print(RunningWorkoutE10.mileInMeters)

