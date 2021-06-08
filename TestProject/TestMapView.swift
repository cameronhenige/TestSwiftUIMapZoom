
import SwiftUI
import MapKit

struct TestMapView: UIViewRepresentable {

    final class Coordinator {
        var hasZoomed = false
    }
    
    @Binding var locations: [MKPointAnnotation]

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    func makeUIView(context: Context) -> MKMapView {
        return MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        view.removeAnnotations(view.annotations)
        view.addAnnotations(locations)
        if(!context.coordinator.hasZoomed && !self.locations.isEmpty) {
            view.showAnnotations(locations, animated: false)
            context.coordinator.hasZoomed = true
        }
    }
}
