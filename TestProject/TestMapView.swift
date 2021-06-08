
import SwiftUI
import MapKit

struct TestMapView: UIViewRepresentable {
    
    @Binding var map : MKMapView
    @Binding var locations: [MKPointAnnotation]
    @State var hasZoomed = false
    
    func makeUIView(context: Context) -> MKMapView {
        return map
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        self.map.addAnnotations(locations)
        
        //I only want to call this once.
        if(!hasZoomed && !self.locations.isEmpty) {
            self.map.showAnnotations(locations, animated: false)
            hasZoomed = true //here i get a warning "Modifying state during view update, this will cause undefined behavior."
        }
    }
}
