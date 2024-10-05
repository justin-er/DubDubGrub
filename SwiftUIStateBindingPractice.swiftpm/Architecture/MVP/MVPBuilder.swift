import Foundation

@available(iOS 17.0, *)
class MVPBuilder {
    static func build() -> MVPInteractor {
        let userService = UserService()
        // TODO: SessionData should be converted to a stream and place in a centralized loaction like app component.
        let sessionData = SessionData(token: "456")
        let interactor = MVPInteractor(
            userService: userService,
            sessionData: sessionData
        )
        
        return interactor
    }
    
    static func build() -> MVPChildView {
        MVPChildView(interactor: Self.build())
    }
}
