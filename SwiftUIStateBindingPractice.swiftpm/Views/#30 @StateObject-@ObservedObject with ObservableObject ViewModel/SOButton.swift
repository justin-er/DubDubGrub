
import SwiftUI

struct SOButton: View {
    @ObservedObject var viewModel: ClassViewModel
    
    var body: some View {
        Button(viewModel.status ? "Pause" : "Play") {
            viewModel.status.toggle()
        }
        .foregroundColor(.black)
    }
}
