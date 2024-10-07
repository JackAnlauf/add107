import UIKit
import Foundation
/*
1) Write a function that calculates and displays all the Fibonacci numbers from 0 to 1000

2) Record a Panopto video of you demoing your working code

3) Upload your code to Git and provide me a link
*/





/*
RECIPE


Ingredients
 
 string
 func
 integers
 addition
 
Instructions

 initialize the string for display
 
 create the fibinacci function. its inputs are 2 integers and output is 1 integer
    first create a variable to be the value of the two integers summed.
    if that value is greater than 1000, end the function in a return statement
    otherwise, return the value of the larger input, and the sum of the larger with the smaller.
    this will recursivly compute the fibinacci numbers. While these numbers are calculated,
    build up a string with the new value added to it each time, as a string. Use \n for cleaner display
    
start the function with the first two fib numbers, 0 and 1.
print the string
*/


var fibSequence = ""

func fib(a: Int, b: Int) -> Int {
    var c = a + b
    
    if c > 1000 {
        fibSequence = "0\n1\n" + fibSequence
        return c
    }
    
    else {
        fibSequence += (String(c) + "\n")
        return fib(a:b,b:c)
    }
    
}


fib(a:0,b:1)
print(fibSequence)
