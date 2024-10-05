import SwiftUI

struct SSVMContainerView: View {
    @State private var viewModel = StructViewModel(status: false)
    
    var body: some View {
        VStack {
            Circle()
                .fill(viewModel.status ? .blue : .green)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .onTapGesture {
                    self.viewModel.status.toggle()
                }
            SSVMButton(viewModel: $viewModel)
        }
    }
}
