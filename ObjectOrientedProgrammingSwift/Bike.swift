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
    
    init(brand:String, wheels:Int, engine:String) {
        self.brand = brand
        self.wheels = wheels
        self.engine = engine
        self.isOn = false
    }
    
    func startMachine(){
        if isOn == false {
            isOn = true
            print("Machine Started")
        } else {
            print("Machine already started")
        }
    }
    
    func stopMachine() {
        if isOn == false {
            isOn = true
            print("Machine Stopped")
        } else {
            print("Machine already Stopped")
        }
    }
    
    func speedUp(speedAdded: Float){
        speed += speedAdded
    }
    
    func breakBike(speedRemoved: Float) {
        speed -= speedRemoved
    }
    
}

struct Cat {
    var name: String
    var type: String
}
