import UIKit

let dummyProfileList = [Profile(nickname: "Addy", firstname: "Asher", lastname: "Galindo"),
                        Profile(nickname: "Dino", firstname: "Anthony", lastname: "Paterson"),
                        Profile(nickname: "Doc", firstname: "Sidney", lastname: "Wolf"),
                        Profile(nickname: "Gigi", firstname: "Stuart", lastname: "Bell"),
                        Profile(nickname: "Hurricane", firstname: "Frances", lastname: "Melton"),
                        Profile(nickname: "Jim", firstname: "Jimmie", lastname: "Tillman"),
                        Profile(nickname: "Slayer", firstname: "Marco", lastname: "Parsons"),
                        Profile(nickname: "Sparkle", firstname: "Brody", lastname: "Richardson"),
                        Profile(nickname: "Viper", firstname: "Karan", lastname: "Donnelly"),
                        Profile(nickname: "Wildy", firstname: "Karim", lastname: "Coffey")]

class ProfileWorker {
    
    class func fetchProfiles() -> [Profile] {
        // TODO: Fetch profile list
        return dummyProfileList
    }
    
}
