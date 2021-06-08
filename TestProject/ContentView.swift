
import SwiftUI
import MapKit

struct ContentView: View {
    
    @ObservedObject var testViewModel = TestViewModel()
    @State var map = MKMapView()

    var SearchingButtonText: some View {
            return Text("Test" )
    }
    
    var body: some View {
            VStack {
            
                TestMapView(map: self.$map, locations: $testViewModel.locations)
                
            }.onAppear() {
                self.testViewModel.fetchData()
              }
    }
}

