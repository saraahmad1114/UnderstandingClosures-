//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Understanding the Chapter on Closures in the Swift 3 book 

var names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backwards (firstString: String, secondString: String) -> Bool{
    return firstString > secondString
}

var reversedNames = names.sorted(by:backwards)

var anotherReversedNames = names.sorted(by: { (stringOne: String, stringTwo: String) -> Bool in return stringOne > stringTwo})

print(reversedNames)
print(anotherReversedNames)

//For characters in Strings, "greater than" means appears later in the alphabet than. For example the letter "B" is greater than "A". For this reason Ewa appears first because its the greatest of the strings and therefore appears first in the reversedNames array 


//Another Example 

func alphabeticalOrder(firstString: String, secondString: String) -> Bool{
    return firstString < secondString
}

var alphabeticalOrderedNames = names.sorted(by:alphabeticalOrder)

print(alphabeticalOrderedNames)

//Now the names will appear in alphabetical order, here the concept is the opposite of the above where if the letters are less than each other then they will appear first

