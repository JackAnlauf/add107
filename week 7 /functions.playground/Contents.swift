import UIKit
import Foundation

/*


1) Write a playground to do something useful for you in your daily life that contains the following items;

* A function

* A closure


 Ideas: Gym
 
 
 
 
 
 */

//PRIORITY TO DO LIST


var tasks: [String:Int] = [:]


func addTask(task: String, priority:Int) {
    tasks[task] = priority
    
}


addTask(task: "critical thinking", priority: 5)
addTask(task: "recipe", priority: 3)
addTask(task: "leetcode practice", priority: 2)
addTask(task: "laundry", priority: 1)
addTask(task: "gym", priority: 4)
addTask(task: "lunch", priority: 2)


let sortedTasks = tasks.sorted { (task0: (key:String,value:Int), task1: (key:String,value:Int)) -> Bool in
    return task0.value  > task1.value
    
}

var order = ""
for (key,value) in sortedTasks {
    order += key + "\n"
}
