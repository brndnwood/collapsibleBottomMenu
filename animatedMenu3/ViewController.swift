//
//  ViewController.swift
//  animatedMenu3
//
//  Created by Brandon Wood on 8/5/19.
//  Copyright © 2019 Brandon Wood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var expandButton: UIButton!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var circleView: CircleView!
    
    var bottomViewCollapsed = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    fileprivate func convertToRadians(degrees : CGFloat) -> CGFloat {
        return (degrees * .pi / 180)
    }

    @IBAction func expandButtonPressed(_ sender: Any) {
        
        let radians = convertToRadians(degrees: 180)
        
        if (bottomViewCollapsed) {
            UIView.animate(withDuration: 0.2, animations: {
                self.bottomView.transform   = CGAffineTransform(translationX: 0, y: -100)
                self.expandButton.transform = CGAffineTransform(rotationAngle: radians)
                self.circleView.transform   = CGAffineTransform(scaleX: 11, y: 11)
            })
        } else {
            UIView.animate(withDuration: 0.2, animations: {
                self.bottomView.transform   = .identity
                self.expandButton.transform = .identity
                self.circleView.transform   = .identity
            })
        }
        bottomViewCollapsed = !bottomViewCollapsed
    }
}

