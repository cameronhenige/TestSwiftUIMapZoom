
import SwiftUI
import MapKit

struct ContentView: View {
    
    @ObservedObject var testViewModel = TestViewModel()

    var SearchingButtonText: some View {
        return Text("Test" )
    }
    
    var body: some View {
        VStack {
            TestMapView(locations: $testViewModel.locations)
        }.onAppear() {
            self.testViewModel.fetchData()
        }
    }
}

