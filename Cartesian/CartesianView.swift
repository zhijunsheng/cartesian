//
//  CartesianView.swift
//  Cartesian
//
//  Created by Donald Sheng on 2020-04-04.
//  Copyright © 2020 Peter Shi. All rights reserved.
//

import UIKit

class CartesianView: UIView {

    override func draw(_ rect: CGRect) {
        drawGrid()
        
        
    }

    private func drawGrid() {
        let gridPath = UIBezierPath()
        
        for i in -20...20 {
            let y = bounds.height / 2 + 20 * CGFloat(i)
            gridPath.move(to: CGPoint(x: 0, y: y))
            gridPath.addLine(to: CGPoint(x: bounds.width, y: y))
            
            let x = bounds.width / 2 + 20 * CGFloat(i)
            gridPath.move(to: CGPoint(x: x, y: 0))
            gridPath.addLine(to: CGPoint(x: x, y: bounds.height))
        }
        
        gridPath.lineWidth = 1
        UIColor.lightGray.setStroke()
        gridPath.stroke()
        
        let axisPath = UIBezierPath()
        
        axisPath.move(to: CGPoint(x: 0, y: bounds.height / 2))
        axisPath.addLine(to: CGPoint(x: bounds.width, y: bounds.height / 2))
        
        axisPath.move(to: CGPoint(x: bounds.width / 2, y: 0))
        axisPath.addLine(to: CGPoint(x: bounds.width / 2, y: bounds.height))
        
        UIColor.black.setStroke()
        axisPath.lineWidth = 3
        axisPath.stroke()
    }
}
