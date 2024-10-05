import SwiftUI

class Person {
    let name = "Amir"
}

@available(iOS 17.0, *)
struct MVPChildView: View {
    @Environment(MVPViewModel.self) private var viewModel
    private var interactor: MVPInteractor
    
    init(interactor: MVPInteractor) {
        self.interactor = interactor
    }
    
    var body: some View {
        Text(viewModel.userName)
            .onAppear {
                interactor.viewWillAppear(viewModel: viewModel)
            }
    }
}

