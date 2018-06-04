//
//  ViewController.swift
//  LocationDemo
//
//  Created by gdcp on 2018/6/4.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*let manager = CLLocationManager()
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        */
        let mapView = MKMapView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        mapView.mapType = .standard
        mapView.region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(23.16,113.23), span: MKCoordinateSpanMake(1,1))
        let pn = MKPointAnnotation()
        pn.coordinate = CLLocationCoordinate2DMake(23.16, 113.23)
        pn.title = "GuangZhou"
        pn.subtitle = "GuangDong,China"
        mapView.addAnnotation(pn)
        self.view.addSubview(mapView)
        
        
    }
   /* func locationManager(_ manager:CLLocationManager, didUpdateLocations locations:[CLLocation]){
        print(locations)
    }*/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

