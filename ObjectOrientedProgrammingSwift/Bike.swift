//
//  Bike.swift
//  ObjectOrientedProgrammingSwift
//
//  Created by Fauzi Fauzi on 15/05/19.
//  Copyright © 2019 Fauzi. All rights reserved.
//

import Foundation

class Bike {
    var brand: String
    var wheels: Int
    var engine: String
    var isOn: Bool
    var speed: Float = 0
    
    init(_ brand:String,_ wheels:Int,_ engine:String) {
        self.brand = brand
        self.wheels = wheels
        self.engine = engine
        self.isOn = false
    }
    
    func startMachine(){
        if isOn == false {
            isOn = true
        } else {
        }
    }
    
    func stopMachine() {
        speed = 0
        if isOn == false {
            isOn = true
        } else {
        }
    }
    
    func speedUp(speedAdded: Float){
        speed += speedAdded
    }
    
    func breakBike(speedRemoved: Float) {
        speed -= speedRemoved
    }
}
