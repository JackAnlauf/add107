import UIKit

//Payouts for the simplified version of roulette
let even = 2
let odd = 2
let red = 2
let black = 2
let exactNumber = 32

//Player name and bankroll
let player = "Jack"
var bankroll = 40


// varibables reused every round

var choice: String
var bet: Int
var payout: Int
var result: Int


//ROUND 1

//Jack always starts with a bet on red...
choice = "red"
bet = 10
bankroll -= bet

result = Int.random(in: 1...2)
if result == 1 { // is red
    payout = bet * red
    print(player, " bet ",bet," on ",choice, " and it WON! Payout: ",payout)
    
}
else {
    payout = 0
    print(player, " bet ",bet," on ",choice, " and it LOST! Payout: ",payout)

}
bankroll += payout
print("Bankroll: ",bankroll)



//ROUND 2

//Jack trusts red regardless of last outcome
choice = "red"
bet = 10
bankroll -= bet


result = Int.random(in: 1...2)
if result == 1 { // is red
    payout = bet * red
    print(player, " bet ",bet," on ",choice, " and it WON! Payout: ",payout)
    
}
else {
    payout = 0
    print(player, " bet ",bet," on ",choice, " and it LOST! Payout: ",payout)

}
bankroll += payout
print("Bankroll: ",bankroll)



//ROUND 3

//The black tables just opened up, lets just bet what we have left evenly on 4 numbers (1 in 8 odds) and go to the tables
choice = "2,16,29,34"
bet = bankroll
bankroll -= bet


result = Int.random(in: 1...8)
if result == 1 { // is one of the numbers
    payout = bet/4 * exactNumber
    print(player, " bet ",bet/4," on ",choice, " and it WON! Payout: ",payout)
    
}
else {
    payout = 0
    print(player, " bet ",bet/4," on ",choice, " and it LOST! Payout: ",payout)

}
bankroll += payout
print("Bankroll after roulette: ",bankroll)






