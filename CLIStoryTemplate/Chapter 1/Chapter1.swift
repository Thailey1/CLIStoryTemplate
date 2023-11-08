//
//  Chapter1.swift
//  CLIStoryTemplate
//In this story you would be learning about how we all became apart of the Apple Developer Academy. Our group Good Vibes including Asia, Tommy, Jarvis, Shanté, and Tamera would be apart of the story. This would include how we all got here and where we would land in the future. Asia became apart of the academy though her school. A mentor came to Renaisance High School and introduced the academy. What she wanted to get out of it is learning new skills in tech. So Asia applied and got in. Shanté became apart of the program after watching the nightly news and seeing a short news piece that introduced her to the Apple Developer's Program for the first time.  She then went to Michigan State's website, applied to the program, and got accepted. Jarvis herad about the program from friends in the previous years program, and joined to learn more about the business of app development. Tamera became part of the program after a colleague of hers sent her the link to apply, knowing how much she enjoyed programming. She applied because she not only wanted to learn more about coding--but about design and business especially. She went through the interview process and was eventually accepted into the academy. Tommy became apart of the academy after completing foundations , in which he was presented the oppurtunity to join by a fellow class mate name Olga, which was actually his uber driver at the time. He chose to join after expressing to Olga how he wanted a career change, which he began after completing the foundations program , applying to the academy and getting accepted. Even though everyone join the academy a different way, we all wanted to get the same thing out of it. Which is getting better or learning more skills. This is how our group Good Vibes becames. Enjoy learning about our journey.

import Foundation
func chapterOne(){
    switch timeOfStory {
    case .before:
        print("In this story you would be learning about how we all became apart of the Apple Developer Academy.")
        var otherTeamName =  printName()
        printNames()
        
        if characters.count < 5 {
            print(" We are down a team member right now")
        } else {
            print("We have a full team and we are happy with each other")
        }
        print("This would include how we all got here and where we would land in the future..")
        
        // Define our enum
        
        // Create an instance of our enum
        
        // Conditional - If the time period is before academy, let's talk about what members were doing before academy
        print("")
        print("Asia became apart of the academy though her school. A mentor came to Renaissance High School and introduced the academy. What she wanted to get out of it is learning new skills in tech. So Asia applied and got in.")
        print("Shanté became apart of the program after watching the nightly news and seeing a short news piece that introduced her to the Apple Developer's Program for the first time.  She then went to Michigan State's website, applied to the program, and got accepted.")
        print("Jarvis herad about the program from friends in the previous years program, and joined to learn more about the business of app development.")
        print("Tamera became part of the program after a colleague of hers sent her the link to apply, knowing how much she enjoyed programming. She applied because she not only wanted to learn more about coding--but about design and business especially. She went through the interview process and was eventually accepted into the academy.")
        print("Tommy became apart of the academy after completing foundations , in which he was presented the oppurtunity to join by a fellow class mate name Olga, which was actually his uber driver at the time. He chose to join after expressing to Olga how he wanted a career change, which he began after completing the foundations program , applying to the academy and getting accepted.")
        print("Even though everyone join the academy a different way, we all wanted to get the same thing out of it. Which is getting better or learning more skills. This is how our group Good Vibes became. Enjoy learning about our journey.")
        
        
        
        
        
        
    case .during:
        print("That comes later!")
    case .after:
        print("That comes later!")
    }
}

enum Timeline {
    case before, during, after
}

var timeOfStory: Timeline = .before

func printName() -> String {
    var teamName = ""
    print("Our group name is Good Vibes. What's your group name?")
    print("Enter your group name")
    if let groupName = readLine() {
        print("\(groupName), that's a great name!")
        teamName = groupName
    }
    return teamName
}
var characters = ["Asia", "Tommy", "Jarvis", "Shanté", "Tamera"]
var scenes = ["The begining of everyone story", "The future of everyone career"]
let chapters = [1,2,3,4,5]

func printNames(){
    for character in characters {
        print(character)
        
    }
    
}



struct character {
    let name:String
    let age:Int
    let city:String
}

let char1 = character(name: "Asia", age: 17, city: "Detroit")


