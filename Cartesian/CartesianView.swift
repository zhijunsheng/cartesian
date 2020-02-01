//
//  CartesianView.swift
//  Cartesian
//
//  Created by Peter Shi on 2020-01-28.
//  Copyright © 2020 Peter Shi. All rights reserved.
//

import UIKit

class CartesianView: UIView {
    override func draw(_ rect: CGRect) {
        let carteX = bounds.width / 2
        let carteY = bounds.height / 2
        let grapher = UIBezierPath()
        let crosser = UIBezierPath()
        for i in 1...7 {
            grapher.move(to: CGPoint(x: 0, y: CGFloat(i) * (carteY / 4)))
            grapher.addLine(to: CGPoint(x: bounds.width, y: CGFloat(i) * (carteY / 4)))
        }
        
        for i in 1...7 {
            grapher.move(to: CGPoint(x: CGFloat(i) * (carteX / 4), y: 0))
            grapher.addLine(to: CGPoint(x: CGFloat(i) * (carteX / 4), y: bounds.height))
        }
        grapher.lineWidth = 2
        UIColor.gray.setStroke()
        grapher.stroke()
        
        crosser.move(to: CGPoint(x: carteX, y: 0))
        crosser.addLine(to: CGPoint(x: carteX, y: bounds.height))
        crosser.move(to: CGPoint(x: 0, y: carteY))
        crosser.addLine(to: CGPoint(x: bounds.width, y: carteY))

        crosser.lineWidth = 5
        UIColor.black.setStroke()
        crosser.stroke()
        
    }

}
