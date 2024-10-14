import UIKit
import Foundation

/*

 Using Enumerations, Structures, and Optionals

 Build a playground to prototype an interactive menu for my new gourmet burger bistro.

 
 
 
 
 RECIPE
 

 
    INGREDIENTS
 
        struct
        enum
        optionals
        burger ingredients categorized
        for loops
        random
 
        
        
 
 
    INSTRUCTIONS
 
    buils the struct for a gormet burger, it's components should be bun, protein, cheese, toppings, and sauce
    put the categorized ingredients into enumerations similar to the the components of the struct. Set each raw value as an identical string
    create a function :
        use a random number generator to generate a random number between 1 and the length of each burger ingredient category. Then iterate over each enum that many
        times for each category to get a random ingredient to add the current burger instance
    
        (in hindsight, using the random element function is easier)
    create a burger object and use the function to add values to it
 
 
 
 
*/


 /*   ingredients to a gormet burger      */
 
enum Bun: String, CaseIterable {

    case classicBrioche = "Classic Brioche Bun"
    case pretzel = "Pretzel Bun"
    case sesameSeed = "Sesame Seed Bun"
    case wholeWheat = "Whole Wheat Bun"
    case glutenFree = "Gluten-Free Bun"
    case ciabattaRoll = "Ciabatta Roll"
    case noBun = "No Bun"
}


enum Protein: String, CaseIterable {
    case noProtein = "No Protein"
    case angusBeef = "Angus Beef"
    case wagyuBeef = "Wagyu Beef"
    case grassFedBeef = "Grass-Fed Beef"
    case filetMignonBlend = "Filet Mignon Blend"
    case grilledChickenBreast = "Grilled Chicken Breast"
    case spicedChickenThigh = "Spiced Chicken Thigh"
    case turkeyBurger = "Turkey Burger"
    case blackBeanPatty = "Black Bean Patty"
    case quinoaMushroomPatty = "Quinoa and Mushroom Patty"
    case beyondBurger = "Beyond Burger"
    case impossibleBurger = "Impossible Burger"
}

enum Cheese: String, CaseIterable {
    case noCheese = "No Cheese"
    case cheddar = "Cheddar"
    case swiss = "Swiss"
    case blueCheese = "Blue Cheese"
    case gorgonzola = "Gorgonzola"
    case gruyere = "Gruyère"
    case feta = "Feta"
    case goatCheese = "Goat Cheese"
    case pepperJack = "Pepper Jack"
}

enum Topping: String, CaseIterable {
    case noToppings = "No Topping"
    case lettuce = "Lettuce"
    case tomato = "Tomato"
    case onion = "Onion"
    case guacamole = "Guacamole"
    case pickles = "Pickles"
    case jalapeños = "Jalapeños"
    case mushrooms = "Mushrooms"
    case peppers = "Peppers"
    case friedEgg = "Fried Egg"
    case onionRings = "Onion Rings"
}

enum Sauce: String, CaseIterable {
    case noSauce = "No Sauce"
    case ketchup = "Ketchup"
    case mustard = "Mustard"
    case mayo = "Mayo"
    case bbqSauce = "BBQ Sauce"
    case srirachaMayo = "Sriracha Mayo"
    case pesto = "Pesto"
    case chimichurri = "Chimichurri"
    case ranch = "Ranch"
}



struct Burger {
    var bun: String?
    var protein: String?
    var cheese: String?
    var toppings: String?
    var sauce: String?
    
    
}



//let randomBun = Int.random(in: 1...Bun.allCases.count)
//let randomProtein = Int.random(in: 1...Protein.allCases.count)
//let randomCheese = Int.random(in: 1...Cheese.allCases.count)
//let randomTopping = Int.random(in: 1...Topping.allCases.count)
//let randomSauce = Int.random(in: 1...Sauce.allCases.count)
//
//
//
//var myBun = Bun.allCases[randomBun - 1].rawValue
//let myPro = Protein.allCases[randomProtein - 1].rawValue
//let myChz = Cheese.allCases[randomCheese - 1].rawValue
//let myTop = Topping.allCases[randomTopping - 1].rawValue
//let mySce = Sauce.allCases[randomSauce - 1].rawValue
//
//
//myBurger.bun = myBun
//myBurger.protein = myPro
//myBurger.cheese = myChz
//myBurger.topping = myTop
//myBurger.sauce = mySce




func addMyIngredients() {
    myBurger.bun = Bun.allCases.randomElement()!.rawValue
    myBurger.protein = Protein.allCases.randomElement()!.rawValue
    myBurger.cheese = Cheese.allCases.randomElement()!.rawValue
    myBurger.toppings = Topping.allCases.randomElement()!.rawValue
    myBurger.sauce = Sauce.allCases.randomElement()!.rawValue
    

}
var myBurger = Burger()
addMyIngredients()
myBurger


print("Buns: ",myBurger.bun!,"\n","Protein: ",myBurger.protein!,"\n","Cheese: ",myBurger.cheese!,"\n","topping: ",myBurger.toppings!,"\n","sauce: ",myBurger.sauce!,"\n")
