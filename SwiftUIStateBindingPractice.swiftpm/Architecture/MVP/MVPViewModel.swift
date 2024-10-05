import Foundation
import SwiftUI

@available(iOS 17.0, *)
@Observable
class MVPViewModel {
    var userName: String = "N/A"
    
    func update(user: User?) {
        self.userName = user?.name ?? "N/A"
    }
}
