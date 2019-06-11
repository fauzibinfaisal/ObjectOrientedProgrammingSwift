//
//  RoundedButton.swift
//  ObjectOrientedProgrammingSwift
//
//  Created by Fauzi Fauzi on 15/05/19.
//  Copyright © 2019 Fauzi. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        layer.cornerRadius = 10
        backgroundColor = .blue
        setTitleColor(.white, for: .normal)
    }
    
    
}
