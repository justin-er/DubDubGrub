
import SwiftUI

struct OOButton: View {
    @Binding var status: Bool
    
    var body: some View {
        Button(status ? "Pause" : "Play") {
            status.toggle()
        }
        .foregroundColor(.black)
    }
}



