//
//  DetailViewController.swift
//  Ejemplo3
//
//  Created by desarrollador on 18/9/21.
//

import UIKit
import MapKit


class DetailViewController: UIViewController {

    
    var sitio:Sitio?
    
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var descripcion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let s = sitio {
            descripcion.text = s.nombre
            
            loadImage(imageV: imagen, url: s.foto!)
            let initialLocation = CLLocation(latitude: s.latitude!, longitude: s.longitude!)
            mapView.centerToLocation(initialLocation)

            let playaLocation = CLLocation(latitude: s.latitude!, longitude: s.longitude!)
            let region = MKCoordinateRegion(
              center: playaLocation.coordinate,
              latitudinalMeters: 50000,
              longitudinalMeters: 60000)
            mapView.setCameraBoundary(
              MKMapView.CameraBoundary(coordinateRegion: region),
              animated: true)
            
            let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 2000)
            mapView.setCameraZoomRange(zoomRange, animated: true)
            
            let artwork = Artwork(
                title: s.nombre,
                locationName: s.nombre,
                coordinate: CLLocationCoordinate2D(latitude: s.latitude!, longitude: s.longitude!))
            mapView.addAnnotation(artwork)

        }
        
    }
    
    
    func loadImage(imageV:UIImageView, url:String){
        
        
        guard let imageURL = URL(string: url) else { return }

        
        DispatchQueue.global().async {
                guard let imageData = try? Data(contentsOf: imageURL) else { return }

                let image = UIImage(data: imageData)
                DispatchQueue.main.async {
                    imageV.image = image
                }
            }
    }
}

private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 1000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}
