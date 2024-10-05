import Foundation

@available(iOS 17.0, *)
struct User {
    var name: String
}

@available(iOS 17.0, *)
@Observable
class UserService {
    func getUserData(token: String?) -> User? {
        guard let token else { return nil }
            
        return User(name: "Justin")
    }
}
