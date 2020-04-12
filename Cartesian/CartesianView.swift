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
        drawGrid()
        drawPoint(x: -3, y: 0)
    }
    
    func drawPoint(x: CGFloat, y: CGFloat) {
        let point = UIBezierPath(arcCenter: CGPoint(x: x + bounds.width * 0.5, y: bounds.height * 0.5 - y), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        point.fill()
        point.stroke()
    }
    
    func drawGrid() {
        let horizontalLine = UIBezierPath()
        for col in 1 ..< 7 {
            horizontalLine.move(to: CGPoint(x: 50, y: bounds.height * 0.5 - CGFloat(col * 50)))
            horizontalLine.addLine(to: CGPoint(x: bounds.width - 50, y: CGFloat(bounds.height) * 0.5 - CGFloat(col * 50)))
            
            horizontalLine.move(to: CGPoint(x: 50, y: bounds.height * 0.5 + CGFloat(col * 50)))
            horizontalLine.addLine(to: CGPoint(x: bounds.width - 50, y: bounds.height * 0.5 + CGFloat(col * 50)))
        }
        horizontalLine.lineWidth = 0.5
        horizontalLine.stroke()
        
        let VerticalLine = UIBezierPath()

        for row in 1 ..< 7 {
            VerticalLine.move(to: CGPoint(x: bounds.width * 0.5 - CGFloat(row * 50), y: 50))
            VerticalLine.addLine(to: CGPoint(x: bounds.width * 0.5 - CGFloat(row * 50), y: bounds.height - 50))

            VerticalLine.move(to: CGPoint(x: bounds.width * 0.5 + CGFloat(row * 50), y: 50))
            VerticalLine.addLine(to: CGPoint(x: bounds.width * 0.5 + CGFloat(row * 50), y: bounds.height - 50))
        }
        VerticalLine.lineWidth = 0.5
        VerticalLine.stroke()
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
