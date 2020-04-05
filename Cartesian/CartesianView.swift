//
//  CartesianView.swift
//  Cartesian
//
//  Created by Halwong on 2020/4/5.
//  Copyright © 2020 Peter Shi. All rights reserved.
//

import UIKit

class CartesianView: UIView {
    
    override func draw(_ rect: CGRect) {
        drawAxis()
    }
    func drawAxis() {
        let axis = UIBezierPath()
        axis.move(to: CGPoint(x: 0, y: bounds.height * 0.5))
        axis.addLine(to: CGPoint(x: bounds.width, y: bounds.height * 0.5))
        
        axis.move(to: CGPoint(x: bounds.width * 0.5, y: 0))
        axis.addLine(to: CGPoint(x: bounds.width * 0.5, y: bounds.height))
        axis.stroke()
    }
}
