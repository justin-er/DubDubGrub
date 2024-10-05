
import SwiftUI

struct SSVMButton: View {
    @Binding var viewModel: StructViewModel
    
    var body: some View {
        Button(viewModel.status ? "Pause" : "Play") {
            viewModel.status.toggle()
        }
        .foregroundColor(.black)
    }
}


