import Foundation


class Profile {
    
    var firstname: String
    var lastname: String
    var nickname: String
    var fullname: String {
        get { return firstname + " " + lastname }
    }

    init(nickname: String, firstname: String, lastname: String) {
        self.firstname = firstname
        self.lastname = lastname
        self.nickname = nickname
    }
    
}
