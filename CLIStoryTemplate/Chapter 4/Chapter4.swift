//
//  Chapter4.swift
//  CLIStoryTemplate
//



func chapterFour() {
    // Your portion of the story goes here
    func readStory() {
   
        // Struct to represent a student at the Apple Developer Academy
        struct Student {
            var name: String
            var experienceLevel: Int
            var background: Background?
        }

        // Enum to represent different backgrounds and talents
        enum Background {
            case Renisance
            case Design
            case HealthField
            
        }

        // Create an array of students
        var students: [Student] = [
            Student(name: "asia", experienceLevel: 2, background: .Design),
            Student(name: "tamera", experienceLevel: 3),
            Student(name: "Jarvis", experienceLevel: 1),
            Student(name: "Tommy", experienceLevel: 2),
            Student(name: "Shante", experienceLevel: 4)
        ]

        // Constants to describe the academy's environment
        let firstDayExcitement = true
        let challengingJourney = true

        // Variables to track the progress of the group
        var goodVibesFormed = false
        var mixOfEmotions: [String] = []

        // Function to determine a student's background based on their experience level
        func determineBackground(_ level: Int) -> Background {
            switch level {
            case 1:
                return .HealthField
            case 2:
                return .Renisance
            case 3:
                return .Design
            default:
                return .HealthField
            }
        }

        // Loop through the students' experiences and emotions
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

        for emotion in mixOfEmotions {
            print(emotion)
        }

        if goodVibesFormed {
            print("Despite the challenges they all faced individually , the group managed to over come them an were picked randomly by the academy to form good vibes.")
        } else {
            print("The journey continued, and the group works towards forming good vibes.")
        }
    }

    readStory()

}



