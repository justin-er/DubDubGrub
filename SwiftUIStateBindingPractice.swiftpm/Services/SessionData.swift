import Foundation

@available(iOS 17.0, *)
@Observable
class SessionData {
    var token: String?
    
    init(token: String? = nil) {
        self.token = token
    }
}
