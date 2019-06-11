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
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passTextField: UITextField!
    
    
    var myBike: Bike!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        passTextField.delegate = self
        
        myBike = Bike("Ducati",2,"Testastretta")
        
        updateSpeed()
        
        print("myBike brand :\(myBike.brand), engine :\(myBike.engine)")
        
    }
    @IBAction func buttonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail", let destination = segue.destination as? DetailViewController {
            destination.nameFromPreviousView = userTextField.text
        }
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

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userTextField{
            if textField.text == ""{
                let alert = UIAlertController(title: "Error", message: "Username should not empty.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            } else {
                passTextField.becomeFirstResponder()
            }
        } else {
            passTextField.resignFirstResponder()
        }
        return true
    }
}
