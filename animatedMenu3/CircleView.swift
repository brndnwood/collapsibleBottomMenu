//
//  ExpandButtonView.swift
//  animatedMenu3
//
//  Created by Brandon Wood on 8/6/19.
//  Copyright © 2019 Brandon Wood. All rights reserved.
//

import UIKit

class CircleView: UIView {

    override func draw(_ rect: CGRect) {
        
        let path = UIBezierPath(ovalIn: rect)
        UIColor.green.setFill()
        path.fill()
        
    }

}
