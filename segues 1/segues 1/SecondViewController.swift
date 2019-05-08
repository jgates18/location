import UIKit
import MapKit

class SecondViewController: UIViewController, MKMapViewDelegate {
   
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.register(CustomAnnotation.self, forAnnotationViewWithReuseIdentifier: "annotation")
        mapView.delegate = self

        let firstCoordinate = CLLocationCoordinate2D (latitude: 50.716133, longitude: -1.874878)
        let firstAnnotation = CustomAnnotation (coordinate:firstCoordinate, title: "Bournemouth")
        mapView.addAnnotation(firstAnnotation)
        
    }
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        _ = segue.destination as! SecondViewController
        _ = sender as? CustomAnnotation
        
        
    }
    
}


extension ViewController: MKMapViewDelegate {
    
   func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        performSegue(withIdentifier: "Next", sender: nil)
    
    guard let annotation = view.annotation as? CustomAnnotation else { return }
    performSegue(withIdentifier: "Next" , sender: mapView)
    mapView.deselectAnnotation(annotation, animated: true)
    
    dismiss(animated: true, completion: nil)
    

}
    
}
    
