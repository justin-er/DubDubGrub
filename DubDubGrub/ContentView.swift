import SwiftUI

struct ContentView: View {
    let locationManager = LocationManager()
    
    var body: some View {
        AppTabView()
            .environmentObject(locationManager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
