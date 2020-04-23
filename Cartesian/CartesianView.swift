//
//  CartesianView.swift
//  Cartesian
//
//  Created by Peter Shi on 2020-01-28.
//  Copyright © 2020 Peter Shi. All rights reserved.
//

import UIKit

class CartesianView: UIView {
    
    var carteX: CGFloat = 0
    var carteY: CGFloat = 0
    var side: CGFloat = 0
    
    override func draw(_ rect: CGRect) {
        carteX = bounds.width / 2
        carteY = bounds.height / 2
        side = carteY / 10
        let grapher = UIBezierPath()
        let crosser = UIBezierPath()
        let pointer = UIBezierPath()
        grid(amount: 20)
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
        
        pointer.move(to: CGPoint(x: carteX - 25, y: 25))
        pointer.addLine(to: CGPoint(x: carteX, y: 0))
        pointer.addLine(to: CGPoint(x: carteX + 25, y: 25))
        pointer.move(to: CGPoint(x: bounds.width - 25, y: carteY - 25))
        pointer.addLine(to: CGPoint(x: bounds.width, y: carteY))
        pointer.addLine(to: CGPoint(x: bounds.width - 25, y: carteY + 25))
        
        pointer.lineWidth = 5
        UIColor.black.setStroke()
        pointer.stroke()
        
        /*
         
         3x + 5y = 1
         2x - 7y = 1
         
         21x + 35y = 7
         10x - 35y = 5
         
         31x = 12
         x = 12/31
         36/31 + 5y = 1
         5y = 1 - 36/31
         5y = -5/31
         y = -1/31
         */

        for i in -1000...1000 {
            let x: CGFloat = (CGFloat(i) / 10) * bounds.width / 7500
            let y: CGFloat = ((1 - 3 * x) / 5) * bounds.height / 750
            drawPointAt(x: x, y: y)
        }

        for i in -1000...1000 {
            let x: CGFloat = (CGFloat(i) / 10) * bounds.width / 7500
            let y: CGFloat = -((1 - 2 * x) / 7) * bounds.height / 750
            drawPointAt(x: x, y: y)
        }

//        drawPointAt(x: 3, y: 1)
//        drawPointAt(x: 0, y: 0)
    }
        
    func drawPointAt(x: CGFloat, y: CGFloat) {
        let point = UIBezierPath(arcCenter: CGPoint(x: carteX + side * x, y: carteY - side * y), radius: 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        let r1 = arc4random() % 100
        let r2 = arc4random() % 100
        let r3 = arc4random() % 100
        UIColor(red: CGFloat(r1) / 100, green: CGFloat(r2) / 100, blue: CGFloat(r3) / 100, alpha: 1).setFill()
        point.fill()
    }
    
    func drawPoints(places: [CGPoint]) {
        for place in places {
            drawPointAt(x: place.x, y: place.y)
        }
    }
    
    func curve(myFunc: (CGFloat) -> CGFloat ) {
        var points: [CGPoint] = []
        for i in -5000...5000 {
            points.append(CGPoint(x: CGFloat(i), y: myFunc(CGFloat(i))))
        }
        drawPoints(places: points)
    }
    func grid(amount: Int) {
        let grapher = UIBezierPath()
        for i in 1..<amount {
            grapher.move(to: CGPoint(x: 0, y: CGFloat(i) * side))
            grapher.addLine(to: CGPoint(x: bounds.width, y: CGFloat(i) * side))
            grapher.move(to: CGPoint(x: CGFloat(i) * side, y: 0))
            grapher.addLine(to: CGPoint(x: CGFloat(i) * side, y: bounds.height))
        }
        grapher.stroke()
    }
}
