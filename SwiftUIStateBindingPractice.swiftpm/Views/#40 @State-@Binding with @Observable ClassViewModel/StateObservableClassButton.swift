
import SwiftUI

@available(iOS 17.0, *)
struct StateObservableClassButton: View {
    @Binding var viewModel: ObservableClassViewModel
    
    var body: some View {
        Button(viewModel.status ? "Pause" : "Play") {
            viewModel.status.toggle()
        }
        .foregroundColor(.black)
    }
}


