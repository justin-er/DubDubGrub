import SwiftUI

struct SOContainerView: View {
    @StateObject private var viewModel = ClassViewModel(status: false)
    
    var body: some View {
        VStack {
            Circle()
                .fill(viewModel.status ? .blue : .green)
                .frame(width: 100, height: 100)
                .onTapGesture {
                    self.viewModel.status.toggle()
                }
            SOButton(viewModel: viewModel)
        }
    }
}
