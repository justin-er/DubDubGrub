
import SwiftUI

@available(iOS 17.0, *)
struct EnvironmentObservableClassButton: View {
    @Environment(ObservableClassViewModel.self) private var viewModel

    var body: some View {
        Button(viewModel.status ? "Pause" : "Play") {
            viewModel.status.toggle()
        }
        .foregroundColor(.black)
    }
}


