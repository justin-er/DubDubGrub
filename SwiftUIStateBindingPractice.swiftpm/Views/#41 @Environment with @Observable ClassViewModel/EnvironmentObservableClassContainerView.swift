import SwiftUI

@available(iOS 17.0, *)
struct EnvironmentObservableClassContainerView: View {
    let viewModel = ObservableClassViewModel(status: true)

    var body: some View {
        VStack {
            Circle()
                .fill(viewModel.status ? .blue : .green)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .onTapGesture {
                    self.viewModel.status.toggle()
                }
            EnvironmentObservableClassButton()
        }
        .environment(viewModel)
    }
}
