
import SwiftUI

struct StateButton: View {
    @Binding var status: Bool
    
    var body: some View {
        Button(status ? "Pause" : "Play") {
            status.toggle()
        }
        .foregroundColor(.black)
    }
}

#Preview {
    StateButton(status: .constant(true))
}


