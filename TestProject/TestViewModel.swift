

import Foundation
import CoreLocation
import MapKit

class TestViewModel: NSObject, ObservableObject {
    
    @Published var locations: [MKPointAnnotation] = []
    
    func fetchData() {
        
        let london = MKPointAnnotation()
        london.title = "London"
        london.coordinate = CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275)
        
        let londonTwo = MKPointAnnotation()
        londonTwo.title = "London Two"
        londonTwo.coordinate = CLLocationCoordinate2D(latitude: 51.507224, longitude: -0.1277)
        
        
        let londonThree = MKPointAnnotation()
        londonThree.title = "London Three"
        londonThree.coordinate = CLLocationCoordinate2D(latitude: 51.507226, longitude: -0.1279)
        

        let berlin = MKPointAnnotation()
        berlin.title = "Berlin"
        berlin.coordinate = CLLocationCoordinate2D(latitude: 52.5200, longitude: 13.4050)
        
        let berlinTwo = MKPointAnnotation()
        berlinTwo.title = "Berlin Two"
        berlinTwo.coordinate = CLLocationCoordinate2D(latitude: 52.5202, longitude: 13.4052)
        
        
        let berlinThree = MKPointAnnotation()
        berlinThree.title = "Berlin Three"
        berlinThree.coordinate = CLLocationCoordinate2D(latitude: 52.5204, longitude: 13.4056)

        //These should initially zoom in.
        locations.append(contentsOf: [london, londonTwo, londonThree])

        let seconds = 7.0
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            self.locations.append(contentsOf: [berlin, berlinTwo, berlinThree])
            //These should just appear on the map but not pan the map to show them.
        }

    }
    
    
}
