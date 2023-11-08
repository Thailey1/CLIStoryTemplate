//
//  Chapter5.swift
//  CLIStoryTemplate
//
func chapterFive() {

    enum CharStories: CaseIterable {
        case Jarvis
        case Asia
        case Tamera
        case Tommy
        case Shante
    }
    
    //I want to print all stories but dont know how
    func jarvisStory()->String {
        return ("used what he learned at the Apple Developer Academy to make numerous apps and became one of the fastest and most popular app developers in the U.S.. He is now known for his fast-fingers and technical📲 know how, always able to troubleshoot and fix ⚒️ problems big and small. He went on to work at a top 🚘 auto company and serves as a consultant for many other companies across the U.S.🇺🇸.")
        //why am I putting return why can't I put print?
        
    }
    
    func asiaStory()-> String {
        return "went on to greatly excel in UI/UX design. Much of her work is seen all around the world and found on many prominent app spaces. Her work showed so much promise and innovation that many use her work as a standard, and she travels the world teaching new developers the Meriweather Way of Design."
    }
    
    func tamerasStory()-> String {
        return "excelled in app development. She not only mastered new code to add to her previous knowledge of Python and C++, but she went on to create a new language of code. She calls this code language TAM, which has been taught interchangeably with Swift. Her name is a household name in the field of technology, innovation, and app development."
    }
    
    func tommyStory()-> String {
        return "learned so much about coding and networking from the academy that he launched 12 successful apps to the app store. His most popular app called NitroDiesel is a popular app that links large-scale production companies to diesel parts needed for industrial machines. Tommy's apps are most popular because of their sleek designs and smooth interfaces."
    }
    
    func shanteStory()-> String {
        return "excelled in mastering code and went on to use the code to become a top freelance app developer, making applications for numerous fields including healthcare field that helped people connect better. In addition, she travels the world learning new techniques and teaching others the coding and UI/UX skills that she knows."
    }
    
    print("The members of Good Vibes...")
    for CharacterStories in CharStories.allCases {
        print(CharacterStories)
    }
    print("got so much out of Developer's Academy and went on to do some interesting work. For instance,...")
    
    func whoseStory(charStory: CharStories)-> String {
        
        switch charStory {
        case .Jarvis:
            jarvisStory()
        case .Asia:
            asiaStory()
        case .Tamera:
            tamerasStory()
        case .Tommy:
            tommyStory()
        case .Shante:
            shanteStory()
        }
    }
    
    let allStories = CharStories.allCases
    
    for character in allStories {
        let story = whoseStory(charStory: character)
        print("\(character) \(story)\n")
    }
    
    
    //-----------Tommy Gets Paid---------------------------
    func TommysMoney (compA:Int, compB:Int)-> Int {
        let sum = compA + compB
        return sum
    }
    let bigPayCheck = TommysMoney(compA: 2, compB: 5)
    
    
    print("Tommy got a big payday 💴. Tommy sold 2 of his 12 apps to two different companies. They promised to pay him 2 million dollars for one app and 5 million dollars for the other app, which meant that Tommy earned  a wapping sum of \(bigPayCheck) million dollar!")
    print("Cha-Ching💰")
    
    
    let endingMembers1 = ["Tommy", "Asia", "Jarvis", "Shante", "Tamera"]
    let memberNickNames1 = ["Tommy 12 Apps💻","Design Wizard🧑‍🎨 ", "Fast-Fingers Jarv💨","Innovative App Designer🚀","TAM Tri-Lingual Queen👑"]
    print("But Two years later \(memberNickNames1[0]) wasn't happy. He missed his friends at the academy. So he called Jarvis.")
    
    
    //---------------
    
    
    
    let teleConvo = ["Jarvis", "Tommy"]
    for convo in teleConvo {
        var dialogue = ""
        //need help understanding these quotaitions and why I must use a variable here
        switch convo {
        case "Jarvis":
            dialogue = "Hi, buddy. What's new? I haven't talked to you in over 2 yrs 🫨."
        case "Tommy" :
            dialogue = "I need your help, I want a job that's more rewarding. I want to be back with the old gang."
        default:
            dialogue = ""
            //what should i put here? because if its called it wont have anything to say
        }
        print("\(convo):\(dialogue)")
    }
    //-------------------------Ending conclusion line up
    
    let endingMembers = ["Tommy", "Asia", "Jarvis", "Shante", "Tamera"]
    let memberNickNames = ["Tommy 12 Apps💻","Design Wizard🧑‍🎨 ", "Fast-Fingers Jarv💨","Innovative App Designer🚀","TAM Tri-Lingual Queen👑"]
    
    print("And just like that Jarvis sends zoom invites to, \(endingMembers[1]) the \(memberNickNames[1])")
    print("\(endingMembers[3]) the \(memberNickNames[3])")
    print("\(endingMembers[4]) the \(memberNickNames[4]), and eventhough they were successful💰 on their own, they left their work 📊 to go on a new adventure 🙃 together again!")
    
    //----------------------------------
    

    
    struct jobsInNewCompany {
        var namePersonal : String
        var titleJob : String
        var bigOffice : Bool
        var codingLanguage : String?
    }
// -----------if else
    let bigOffice = false
    if bigOffice {
        print("Jarvis has the best office in the company with a great view.")
    } else {
        print( "Jarvis has a great office, but its not very big.")
    }
    
    let jarvis = jobsInNewCompany(namePersonal: "Jarvis", titleJob: "", bigOffice: true, codingLanguage: "C++, HTML, Java, Python, Swift")
    let asia = jobsInNewCompany(namePersonal: "Asia", titleJob: "", bigOffice: false)
    let tamera = jobsInNewCompany(namePersonal: "Tamera", titleJob: "", bigOffice: true, codingLanguage: "C++, HTML, Java, Python")
    let shante = jobsInNewCompany(namePersonal: "Shante", titleJob: "", bigOffice: false, codingLanguage: "C++,Python, Swift")
    let tommy = jobsInNewCompany(namePersonal: "Tommy", titleJob: "", bigOffice: true, codingLanguage:"Swift, Java, Python")
    

    
    print("In the new company, everyone had new jobs and titles")
    print("Some specialized in organizational and coding aspects of the company,")
    
    
    func doTheyKnowCode(jobs: jobsInNewCompany){
        if let codingLanguages = jobs.codingLanguage {
            print("They are coders. They know \(codingLanguages)")
        } else {
            print("while others are in charge of design and do not have to do any coding")
        }
    }
    print(doTheyKnowCode(jobs: asia))
    

}
