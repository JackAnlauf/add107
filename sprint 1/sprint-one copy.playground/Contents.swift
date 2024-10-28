import UIKit

//App main idea:
    // To track, analyze and help improve strength of specific exercises
    // Exercises can be measured in weight x reps
    // Improving the number of reps for a given weight or amount of weight
    // for a rep range can be used to improve strength and endurance for an exercise
    // any small improvement in weight or reps can be called a 'Mini Personal Record (MiniPR)'
    // the largest amount of weight executed I will call an 'Absolute PR'
    // more MiniPR's will help achieve an Absolute PR



// SPRINT 1
// Created the basic properties and methods of a the 'Exercise' class


/*  CLASS STRUCTURE FOR EXERCISE  */
class exercise {
    
    /* CLASS PROPERTIES */

    let name: String // ex. benchpress
    
    var variation: String? // ex. wide-grip vs regular grip, optional
    
    
    /*
    Records for weight x reps
    It's purpose is to track the progression of reps for a fixed weight.
        Example entry:    (185 : 5,1.1)
        185 pounds   for (5 reps on week 1.1)
            Week 1.1 stands for week 1, session 1. Where typically a week has 1-6 sessions*/
    var weight_records: [Int:[(Int,Double)]]
    
    /* Records for reps x weight. Lifters might want to train a rep range to be stronger
     This essentially a reverse of weight records */
    var rep_records: [Int:[(Int,Double)]]
    
    
        
    /* INIT FUNCTIONS */
    
    //variant not necessary for initialization
    init(name: String){
        self.name = name
        self.variation = nil
        self.weight_records = [:]
        self.rep_records = [:]
    }
    
    
    init(name: String, variation: String) {
        self.name = name
        self.variation = variation
        self.weight_records = [:]
        self.rep_records = [:]
    }

    
    /*  CLASS METHODS  */
    
    
    // rename the variation of exercise, for example, changing traditional benchpress to "medium-grip"
    func renameVariation(variation: String) {
        self.variation = variation
    }
    
    func getRepRecords() -> [Int:[(Int,Double)]]{
        return self.rep_records
    }
    
    func getWeightRecords() ->  [Int:[(Int,Double)]]{
        return self.weight_records
    }
    
    //add a record
    func addRecord(weight: Int, reps: Int, session: Double) {
        if !self.rep_records.keys.contains(reps){
            self.rep_records[reps] = [(weight,session)]
        }
        if !self.weight_records.keys.contains(weight) {
            self.weight_records[weight] = [(reps,session)]
        }
        self.rep_records[reps]?.append((weight, session))
        self.weight_records[weight]?.append((reps, session))
        
    }
    
    // find the MiniPR for a weight range
    func rep_mini_PR(weight: Int) -> Int {
        var mini_rep_PR = 0
        for rep_record in self.weight_records[weight]! {
            if rep_record.0 > mini_rep_PR {
                mini_rep_PR = rep_record.0
            }
            
        }
        return mini_rep_PR

    }
    
    // find the MiniPR for a rep range
    func weight_mini_PR(reps: Int) -> Int {
        var mini_weight_PR = 0
        for weight_record in self.rep_records[reps]! {
            if weight_record.0 > mini_weight_PR {
                mini_weight_PR = weight_record.0
            }
            
        }
        return mini_weight_PR

    }
    // returns the absolute PR of the exercise, as well as it's reps and date
    // var weight_records: [Int:[(Int,Decimal)]]

    func absolute_PR() -> (Int,Int,Double){
        print(self.weight_records.keys)
        if let PR = self.weight_records.max(by: { $0.key < $1.key }) {
            var rep_PR = 0
            var date = 1.1
            for record in PR.value {
                if record.0 > rep_PR {
                    rep_PR = record.0
                    date = record.1
                }
            }
            return (PR.key, rep_PR, date)
        }
        return (0,0,0)
    }
    
    // sort records by date becuase swift does not keep dictionaries in the order they were added
    func sortRecords() {
        var weight_records_sorted = self.weight_records.sorted{ $0.value[1] < $1.value[1] }
        var rep_records_sorted = self.rep_records.sorted{ $0.value[1] < $1.value[1] }
    
    }
            
    // print a summary analysis
    func analyze() -> String {
        
        let (PR,reps,session) = self.absolute_PR()
    
        let string =    "Exercise: " +
                        self.name +
                        ". Variation: " +
                        self.variation! +
                        ". Personal Record: " +
                        String(PR) +
                        " for " +
                        String(reps) +
                        " reps. During session: " +
                        String(session) +
                        "."
     
        return string
    }

}



var myBenchpress = exercise(name: "Benchpress", variation: "Traditional")


myBenchpress.addRecord(weight: 185, reps: 5, session: 1.1)
myBenchpress.addRecord(weight: 205, reps: 2, session: 5.1)


myBenchpress.analyze()
