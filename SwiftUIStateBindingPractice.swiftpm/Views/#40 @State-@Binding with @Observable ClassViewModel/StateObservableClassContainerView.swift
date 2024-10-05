import SwiftUI

@available(iOS 17.0, *)
struct StateObservableClassContainerView: View {
    @State private var viewModel = ObservableClassViewModel(status: false)
    
    var body: some View {
        VStack {
            Circle()
                .fill(viewModel.status ? .blue : .green)
                .frame(width: 100, height: 100)
                .onTapGesture {
                    self.viewModel.status.toggle()
                }
            StateObservableClassButton(viewModel: $viewModel)
        }
    }
}
