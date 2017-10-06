//
//  ViewController.swift
//  Hola Mundo
//
//  Created by Daniel Suárez Souto on 7/9/17.
//  Copyright © 2017 UPM. All rights reserved.
//

import UIKit

import MapKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var msgLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func holaPressed(_ sender: UIButton) {
        
        msgLabel.text = "Hola"
        
        //slider.value = 0.5
        slider.setValue(0.5, animated: true)
        
        updateAlpha(slider)
        
        let center = CLLocationCoordinate2D(latitude: 55.7558, longitude: 37.6173)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.004,
                                    longitudeDelta: 0.004)
        
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.mapType = .hybrid
        
        mapView.setRegion(reg, animated: true)
        
    }

    @IBAction func madridPressed(_ sender: UIButton) {
        let center = CLLocationCoordinate2D(latitude: 40.4154, longitude: -3.7074)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.004,
                                    longitudeDelta: 0.004)
        
        let reg = MKCoordinateRegion(center: center, span: span)
        
        
        mapView.setRegion(reg, animated: true)

    }
    
    @IBAction func mundoPressed(_ sender: UIButton) {
        
        msgLabel.text = "Mundo"
        
        let center = CLLocationCoordinate2D(latitude: 40.452445, longitude: -3.726162)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.004,
            longitudeDelta: 0.004)
        
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.mapType = .satellite
        
        mapView.setRegion(reg, animated: true)
    }
    
    @IBAction func updateAlpha(_ sender: UISlider) {
        
        msgLabel.alpha = CGFloat(sender.value)
    }
    
}

