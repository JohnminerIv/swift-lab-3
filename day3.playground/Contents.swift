import UIKit

var str = "Hello, playground"
/*
 You can iterate over the key-value pairs in a dictionary with a for-in loop. Each item in the dictionary is returned as a (key, value) tuple. Print all the values from colorHex.
 */
 var colorHex: [String:String] = [
     "purple" : "#6C3483",
     "blue" : "#2874A6",
     "green": "#1E8449" ,
     "orange" : "#D35400",
     "yellow" : "#F1C40F",
     "white" : "#FFFFFF",
     "black" : "#000000"
 ]
for (_, value) in colorHex {
    print(value)
}
/*
 Given an array of colors. We need to know how many times each color appears in the array.
 */
 var colors = ["red", "orange", "purple", "pink", "blue", "red", "green", "red", "blue", "purple", "pink" , "purple", "purple"]
func count(colors list: [String]) {
    var countDict: [String: Int] = [:]
    for color in list {
        if let thisColorCount = countDict[color] ?? 0 {
            countDict[color] = 1 + thisColorCount
        }
    }
    for (key, value) in countDict {
        print("\(key) - \(value)")
    }
}
count(colors:colors)
/*
 Your solution should lead to this answer:

 red - 3
 orange - 1
 purple - 4
 pink - 2
 blue - 2
 green - 1
 Write a function that returns the first N Fibonacci numbers.
 Sequence: 1,1,2,3,5,8,13
*/
func fibo(n: Int) -> [Int] {
    var fibList: [Int] = []
    for i in 0...(n-1) {
        if i == 0 || i == 1{
            fibList.append(1)
        }else {
            fibList.append(fibList[fibList.count - 1] + fibList[fibList.count - 2])
        }
    }
    return fibList
}
print(fibo(n: 7))
print(fibo(n: 5))
/*
 //example:

 fibo(n: 7) -> [1,1,2,3,5,8,13]

 fibo(n: 5) -> [1,1,2,3,5]
 Write a function that prints the powers of 2 that are less than or equal to N.
 */
func powersOfTwoLessThan(x: Int){
    var productsList: [Int] = [2]
    while productsList[productsList.count - 1] <= x {
        productsList.append(productsList[productsList.count - 1] * 2)
    }
    productsList.removeLast()
    print(productsList)
}
powersOfTwoLessThan(x: 127)
powersOfTwoLessThan(x: 128)

/*

 Given:
*/
 var coursesAndStudents = [("MOB", 30), ("BEW", 40), ("FEW", 30), ("DS", 40)]
func printOut(coursesAndStudents ict: [(String, Int)]) {
    for (key, value) in ict {
        print("There are \(value) students in the \(key) track")
    }
}
printOut(coursesAndStudents: coursesAndStudents)
/*
 Write a function that prints how many students belong to each track.

 Output:

 There are 30 students in the MOB track
 There are 40 students in the BEW track
 There are 30 students in the FEW track
 There are 40 students in the DS track
 Write a function to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.
*/
func firstAndLastAreEqualOf(thisList ls:[Int]) -> (Bool) {
    return ls[0] == ls[ls.count - 1]
}
firstAndLastAreEqualOf(thisList: [1,1,7,5,2])
firstAndLastAreEqualOf(thisList: [1,1,7,5,2,1])
firstAndLastAreEqualOf(thisList: [7])
// we ignore edge cases here firstAndLastAreEqualOf(thisList: [])
/*
 Write a function to compute the sum of all the elements of a given array of integers.
 */
func sumThis(givenList ls: [Int]) -> (Int) {
    return ls.reduce(0, {(x, y) -> (Int) in x + y})
}
print(sumThis(givenList: [1,2,3,4,5]))
print(sumThis(givenList: [7]))
print(sumThis(givenList: [7, 3]))
/*
 Write a function to rotate the elements of an array of integers to left direction. [1,2,3] becomes [3,2,1]
*/
func reverseThis(givenList ls: [Int]) -> ([Int]){
    var newLs: [Int] = []
    for i in (0...ls.count-1) {
        newLs.append(ls[ls.count - 1 - i])
    }
    return newLs
}
print(reverseThis(givenList: [1,2,3]))
print(reverseThis(givenList: [3,2,1]))
// throws error because 0 -> 0 isn't a range print(reverseThis(givenList: []))

/*
 Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters.
 */
func onlyUniqueChars(thisString str: String) -> (Bool){
    return str.count == Set(str).count
}
onlyUniqueChars(thisString: "Douglas")
onlyUniqueChars(thisString: "DDouglas")
/*
 Write a function that accepts a String and a character and returns how many times that specific character appears in the string.
 */
func countAmountOf(thisChar chr: Character, inThisString str: String) -> (Int){
    return str.filter({ $0 == chr }).count
}
countAmountOf(thisChar: "Z", inThisString: "Zoe")
countAmountOf(thisChar: "o", inThisString: "Zooooooooooe")
/*
 Given a Grid with the following numbers.
 Write a function that adds up the elements in the even rows only
 */
var TwoDArray: [[Int]] = [[0,0,0,0,0], [0,1,2,3,4], [0,2,4,6,8], [0,3,6,9,12], [0,4,8,12,16]]
func sumEvenRowsOf(matrix m: [[Int]]) -> (Int) {
    return m.filter({ $0[1] % 2 == 0}).reduce([], {x, y -> [Int] in x + y}).reduce(0, {x, y -> (Int) in x + y})
}
print(sumEvenRowsOf(matrix: TwoDArray))

var six: [Int] = []
for i in 0...1000000{
    six.append(i*i+i)
}
