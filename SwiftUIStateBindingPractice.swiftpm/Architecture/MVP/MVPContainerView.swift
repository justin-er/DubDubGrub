import SwiftUI

@available(iOS 17.0, *)
struct MVPContainerView: View {
    let cxViewModel = MVPViewModel()
    let sessionData = SessionData(token: "1234")
    let service = UserService()
    
    var body: some View {
        VStack {
            Text("MVPContainerView")
            MVPBuilder.build()
        }
        .environment(sessionData)
        .environment(service)
        .environment(cxViewModel)
    }
}

