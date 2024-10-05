import Foundation
import SwiftUI

@available(iOS 17.0, *)
@Observable
class ObservableClassViewModel {
    var status: Bool {
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
