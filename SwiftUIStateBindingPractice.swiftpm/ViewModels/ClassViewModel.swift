import Foundation
import SwiftUI

class ClassViewModel: ObservableObject {
    @Published var status: Bool {
        didSet { print("ClassViewModel status didSet")}
    }
    
    init(status: Bool) {
        self.status = status
        print("ClassViewModel did init")
    }
    
    deinit {
        print("ClassViewModel did deinit")
    }
}
