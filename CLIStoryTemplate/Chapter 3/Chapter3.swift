//
//  Chapter3.swift
//  CLIStoryTemplate
//

import Foundation

//Constants, Variables, Array, Struct
let title = "Academy Story"
let chapter = 3
var challengeNum = 0
let characters = ["Asia", "Tamera", "Jarvis", "Tommy", "Shanté"]
struct skills{
    var coding: Int
    var business: Int
    var design: Int
    var random: String?
}
var student1 = skills(coding: 0, business: 0, design: 0)
var student2 = skills(coding: 0, business: 0, design: 0, random: "skill up") //optional
var student3 = skills(coding: 0, business: 0, design: 0)

var student = [student1, student2, student3]

func chapterThree() {
    print("\(title): chapter \(chapter)")
    print("Told by \(characters[2])")
    
    print("The first challenge we were given allowed us to apply what we learned about programming, design, and business to our own apps.")
    
    //loop/optional
    for index in 0..<student.count{
        student[index].coding = Int.random(in: 0 ..< 10)
        student[index].business = Int.random(in: 0 ..< 10)
        student[index].design = Int.random(in: 0 ..< 10)
        if student[index].random != nil{
            student[index].coding += 1
            student[index].business += 1
            student[index].design += 1
        }else{
            student[index].random = nil
        }
    }
    
    challengeNum = challenges(description: .challenge1)
    
    //Conditionals
    if student1.coding >= 6{
        print("In the coding portion we used basic operations like buttons, list, and other primative apple functions. And made custom shapes and functionalities for the apps.")
    }
    else if student1.coding == 5{
        print("In the coding portion we used basic operations like buttons, list, and other primative apple functions.")
    }else{
        print("In the coding portion we used very basic programming language to produce an adequate app.")
    }
    
    challengeNum = challenges(description: .challenge2)
    if student1.business >= 6{
        print("We used the sketch app to design the Hi-Fi version of our apps. And used other apps to assist in knowing wat colors worked togerther visually, text was readable, and the app was able to be used by anyone.")
    }
    else if student1.business == 5{
        print("We used the sketch app to design the Hi-Fi version of our apps. And decide to change things from our HI-Fi in order for the app to comply with HIG guidlines.")
    }else{
        print("We used the sketch app to design the Hi-Fi version of our apps. And ended up needing to change multiple aspects of our app to comply with HIG guidelines.")
    }
    
    challengeNum = challenges(description: .challenge3)
    if student1.design >= 6{
        print("The business aspect of the challenge allowed us to show e were able to present our app and covey what it's purpose was and who the audience for it was.")
    }
    else if student1.design == 5{
        print("The business aspect of the challenge allowed us to show we can give a presentation for our app.")
    }else{
        print("The business aspect of the challenge involved presenting our app.")
    }
    print("After this first challenge we were added to our current group, Good Vibes. \n")
}

//Enumeration
enum ChallengeDescription{
    case challenge1, challenge2, challenge3
}
func challenges(description: ChallengeDescription) -> Int{
    switch description{
    case .challenge1:
        print("We were able to use the basics we learned about programming by implementing and expanded on those topics into our apps.")
        return 1
    case .challenge2:
        print("We used what we learned about the HIG to design a user friendly app.")
        return 2
    case .challenge3:
        print("And we used what we learned about bussiness by finding and marketing our app to a specific audience.")
        return 3
    }
}

