import Foundation

@available(iOS 17.0, *)
class MVPInteractor {
    let userService: UserService
    let sessionData: SessionData
    var viewModel: MVPViewModel?
    
    init(userService: UserService, sessionData: SessionData) {
        self.userService = userService
        self.sessionData = sessionData
    }
    
    func viewWillAppear(viewModel: MVPViewModel?) {
        self.viewModel = viewModel
        let user = userService.getUserData(token: sessionData.token)
        viewModel?.userName = user?.name ?? "n/a"
    }
}
