//
//  Chapter2.swift
//  CLIStoryTemplate
//
import Foundation

let team: [String] = ["Tamera", "Tommy", "Jarvis", "Shant\u{00e9}", "Asia"]
let fundamentals = ["design", "coding", "business"]

struct Student {
    var name: String
    let experience: Bool
    var topicsMastered: [Topics] = []
    
    func describe () {
            print("Name: \(name)")
            print("Prior Coding Experience: \(experience)")
           // print("Least Knowledgeable Topic: \(topics)")
    }
    
    // Optional
    
    func describeMasteredTopic() {
        let randomTopic: Topics = topicsMastered.randomElement() ?? Topics.business
        print("The topic i've mastered is \(randomTopic)")
    }
}

enum Topics {
    case coding
    case design
    case business
}

func chapterTwo() {
        
let tameraM = Student(name: "Tamera", experience: true)
    //tameraM.topicsMastered.append(.business)
    
let asiaM = Student(name: "Asia", experience: false)
    
let shanteP = Student(name: "Shant\u{00e9}", experience: false)
    
let tommyH = Student(name: "Tommy", experience: false)
    
let jarvisM = Student(name: "Jarvis", experience: true)
    
    
    let studentArray = [tameraM, asiaM, shanteP, tommyH, jarvisM]
    for student in studentArray {
        student.describe()
    }
    
    // Optional
    
    let topics : [String] = ["business", "design", "coding"]
    let randomTopic: String = topics.randomElement() ?? "you haven't mastered a topic"
    print("The topic i've mastered is \(randomTopic)")
    
    
    // Story Paragraph
    
    print("During our first challenge, our mentors in the academy created a curriculum that ensured we all learned a lot. A requirement is that we all become familiar with the foundations of the academy: ")
    
    for topics in fundamentals {
        print(topics)
    }
    
    print("Regardless of which one you may prefer. During the first challenge, we spent extensive time going over the core principles of \(fundamentals[0]) when building an app--such as the importance of color schemes, making sure text is readable, and being inclusive to those with visual impairments. We spent plenty of time on \(fundamentals[1]) as well. In a couple of the groups, some people designated one person as the \"group coder\", but ultimately everyone was expected to learn about Swift and code in some capacity. For example some things I noticed in across different presentations were arrays, animations, variables, & constants. During challenge 2 we added to our existing knowledge by practicing enums, structs, functons, loops, etc. Using elements of \(fundamentals[2]) was also an important part since we all had a deadline we had to meet to present our work, so we had to work dilligently to learn as much as we could, because although the project didn't have to be fully completed, we did have to demonstrate some fuctionality for our app. We were also paired randomly for our groups and an an important part of \(fundamentals[2]) is being able to work successfully and productively regardless of who you're working with. Overall, the first project presented its' own set of highs and lows within our individual groups but we can all say we walked away having gained significant knowledge. The current team of: ")
    
    for members in team {
        print(members)
    }
    
    print("all have strengths in different areas, but have all demonstrated commitment to improving in our weaker areas.")
    
    //Conditional Statement
    
    var outcome: String
    let students = "continue learning and growing"
    if students == "continue learning and growing" {
        outcome = "Strong effort brings strong results!"
        print(outcome)
    } else if students == "doesn't continue learning and growing" {
        outcome = "weak effort brings weak results :("
    }
}
