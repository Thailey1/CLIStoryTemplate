//
//  Chapter4.swift
//  CLIStoryTemplate
//


// Function is calling chapter 4 which my chapter which is followed by readstory command at the bottom of my code
func chapterFour() {
    // Your portion of the story goes here
    func readStory() {
   
        // Struct commands a couple var that call students names,background &experience
        struct Student {
            var name: String
            var experienceLevel: Int
            var background: Background?
        }

        // Enum to represent different backgrounds and talents
        enum Background {
            case RenaissanceHighSchool
            case ComputerScience
            case HealthField
            case Programing
            
        }

        // Create an array of students with numbers to call a specific student, background & level
        var students: [Student] = [
            Student(name: "asia", experienceLevel: 2, background: .ComputerScience),
            Student(name: "tamera", experienceLevel: 4),
            Student(name: "Jarvis", experienceLevel: 3),
            Student(name: "Tommy", experienceLevel: 4),
            Student(name: "Shante", experienceLevel: 1)
        ]

        // Constants to describe the academy's environment
        let firstDayExcitement = true
        let challengingJourney = true

        // `goodVibesFormed` is a boolean variable indicating whether good vibes have formed
        var goodVibesFormed = false
        //mixOfEmotions` is an array to store a string of emotions felt by each student.
        var mixOfEmotions: [String] = []

        // This is a function that takes an experience level as input and returns a background based on that level. It uses a switch statement to determine the background.
        func determineBackground(_ level: Int) -> Background {
            switch level {
            case 1:
                return .HealthField
            case 2:
                return .RenaissanceHighSchool
            case 3:
                return .ComputerScience
            case 4:
                return .Programing
                
            default :
                return .HealthField
            }
        }

        // allow code to Loop through the students' experiences and emotions
        for student in students {
            let background = determineBackground(student.experienceLevel)
            
            if firstDayExcitement {
                mixOfEmotions.append("\(student.name) from a \(background) background felt a surge of enthusiasm.")
            } else {
                mixOfEmotions.append("\(student.name) was a bit apprehensive on the first day.")
            }
        }

        // Conditional to check if good vibes were formed
        if challengingJourney && students.count >= 5 {
            goodVibesFormed = true
        }

        // Display the story
        print("Once upon a time at the Apple Developer Academy, a group of aspiring junior iOS developers embarked on a long and challenging journey.")
        print("They came from diverse backgrounds, each with their own unique experiences and talents.")
        print("As they gathered for their first day at the academy, there was a mix of excitement and determanation held back by chill vibes roaming in the air.")
//is an array to store descriptions of emotions felt by each student.
        for emotion in mixOfEmotions {
            print(emotion)
        }
//is a boolean variable or if statment indicating whether good vibes have formed
        if goodVibesFormed {
            print("Despite the challenges they all faced individually , the group managed to over come them an were picked randomly by the academy to form good vibes.")
        } else {
            print("The journey continued, and the group works towards forming good vibes.")
        }
    }

    readStory()

}



