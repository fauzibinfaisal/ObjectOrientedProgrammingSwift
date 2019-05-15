//
//  ViewController.swift
//  ObjectOrientedProgrammingSwift
//
//  Created by Fauzi Fauzi on 15/05/19.
//  Copyright © 2019 Fauzi. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var speedLabel: UITextField!
    @IBOutlet weak var speedUpButton: UIButton!
    @IBOutlet weak var breakButton: UIButton!
    @IBOutlet weak var turnOnButton: UIButton!
    @IBOutlet weak var turnOffButton: UIButton!
    
    var myBike: Bike!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myBike = Bike("Ducati",2,"Testastretta")
        
        updateSpeed()
        
        print("myBike brand :\(myBike.brand), engine :\(myBike.engine)")
        
    }

    @IBAction func speedUp(_ sender: UIButton) {
        myBike.speed += 10
        updateSpeed()
    }
    
    @IBAction func breakBike(_ sender: UIButton) {
        myBike.speed -= 3
        updateSpeed()
    }
  
    func updateSpeed(){
        speedLabel.text = String(myBike.speed)
    }
    
    
}

