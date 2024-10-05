import SwiftUI

@available(iOS 17.0, *)
struct CXChildView: View {
    @Environment(CXViewModel.self) private var viewModel
    @Environment(SessionData.self) private var sessionData
    @Environment(UserService.self) private var service
    
    var body: some View {
        Text(viewModel.userName)
            .onAppear {
                let user = service.getUserData(token: sessionData.token)
                viewModel.update(user: user)
            }
    }
}

