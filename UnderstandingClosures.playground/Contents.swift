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

var reversedNamesAgain = names.sorted(by: {stringOne, stringTwo in return stringOne > stringTwo})

var anotherWay = names.sorted(by: {stringOne, stringTwo in stringOne > stringTwo})
//Since its clearly understood that a bool will be returned the return keyword is omitted altogether 

var shorterWay = names.sorted(by: { $0 > $1 })

var evenShorterWay = names.sorted(by: >)


print(reversedNames)
print(anotherReversedNames)
print(reversedNamesAgain)
print(anotherWay)
print(shorterWay)
print(evenShorterWay)

//For characters in Strings, "greater than" means appears later in the alphabet than. For example the letter "B" is greater than "A". For this reason Ewa appears first because its the greatest of the strings and therefore appears first in the reversedNames array 


//Another Example of Inline Closures

func alphabeticalOrder(firstString: String, secondString: String) -> Bool{
    return firstString < secondString
}

var alphabeticalOrderedNames = names.sorted(by:alphabeticalOrder)

print(alphabeticalOrderedNames)

//Now the names will appear in alphabetical order, here the concept is the opposite of the above where if the letters are less than each other then they will appear first

