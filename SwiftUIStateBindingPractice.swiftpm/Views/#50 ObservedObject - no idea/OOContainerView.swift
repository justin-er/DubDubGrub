import SwiftUI

struct OOContainerView: View {
    @State private var status: Bool = true
    
    var body: some View {
        VStack {
            Circle()
                .fill(status ? .blue : .green)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .onTapGesture {
                    self.status.toggle()
                }
            StateButton(status: $status)
        }
        .onAppear {
            
        }
    }
}
