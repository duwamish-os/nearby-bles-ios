//
//  ViewController.swift
//  nearby-bles
//
//  Created by Upd, Prayag on 12/11/19.
//  Copyright © 2019 nearby-bles. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    let locationManager = CLLocationManager()
    var currentLocation: CLLocation!
    
    var latitude: UILabel!
    var longitude: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        
        latitude = UILabel()
        longitude = UILabel()
        latitude.text = "latitude: ???"
        longitude.text = "longitude: ???"
        
        if (CLLocationManager.authorizationStatus() == CLAuthorizationStatus.authorizedWhenInUse ||
            CLLocationManager.authorizationStatus() == CLAuthorizationStatus.authorizedAlways){
            
            guard let currentLocation = locationManager.location else {
                return
            }
        
            latitude.text = "latitude: \(currentLocation.coordinate.latitude)"
            longitude.text = "longitude: \(currentLocation.coordinate.latitude)"
        }
        
        latitude.font = UIFont.systemFont(ofSize: 18)
        latitude.sizeToFit()
        latitude.center = CGPoint(x: 70, y: 60)
        view.addSubview(latitude)
        
        //
        longitude.font = UIFont.systemFont(ofSize: 18)
        longitude.sizeToFit()
        longitude.center = CGPoint(x: 70, y: 80)
        view.addSubview(longitude)
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "nearby bles", message: "list", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }


}

