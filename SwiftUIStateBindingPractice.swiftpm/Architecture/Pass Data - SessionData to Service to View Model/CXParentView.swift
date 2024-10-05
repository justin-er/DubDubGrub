import SwiftUI

@available(iOS 17.0, *)
struct CXParentView: View {
    let cxViewModel = CXViewModel()
    let sessionData = SessionData(token: "1234")
    let service = UserService()
    
    var body: some View {
        VStack {
            Text("CXParentView")
            CXChildView()
        }
        .environment(sessionData)
        .environment(service)
        .environment(cxViewModel)
    }
}

