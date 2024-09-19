import UIKit
import Foundation

/*
 Ingredients:
    for loops, while loops
    thread.sleep
    variable second for seconds in the for loop
    variable hours for the number of hours passed
    varible day for days passed
    variable minutes
    print statements
    if, else if, and else statements
    break statement
 

 
 Instructions:
 
 initialize days, hours, minutes variables to 0
 create an outer while loop to run indefinatly until our else statement is reached later
    this loop represents the days.
    
 inside that days while loop, set it to run until our hours variable hits 24, after which we reset
    hours to 0, and incriment days by 1. Because a day has passed, set 3 if statements (if,else,ifeelse) to
    check if 1 day, 2 days, or more than 2 days have passed. If more than 2, exit the loop via break.
 
 inside the hours loop, create a loop that tracks the minutes passed, similar to the previous step. But without any if statements. reset minutes and incriment hours
 
 inside the minute loops, create a for loop that loops from 1 to 60

 inside that for loop, use the thread.sleep, and set the interval to 1 for 1 second (or shorter for the sake of time).
    also put print statements to display the change of variables.
 

 
 */

var hours = 0
var minutes = 0
var days = 0

while true {  // days
    
    while hours < 24 {  //hours
        
        while minutes < 60 { //minutes
            
            for second in 1...60 { //seconds
                Thread.sleep(forTimeInterval: 0.0001) // how long is the "second"
                /*print(days, " days, ", hours, " hours, ", minutes, " minutes and ", second, " seconds have passed")*/
                print(days, " : ", hours, " : ", minutes, " : ", second)
                
            }
            minutes += 1
            
        }
        minutes = 0
        hours += 1
    }
    hours = 0
    days += 1
    
    
    if days == 1 {
        print("one day has passed in this clock")
    }
    else if days == 2 {
        print("two days have passed in this clock")
    }
    else{
        print("more than two days have passed, you can end the program now")
        break
    }
}







