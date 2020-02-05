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
    
    override func draw(_ rect: CGRect) {
        carteX = bounds.width / 2
        carteY = bounds.height / 2
        let grapher = UIBezierPath()
        let crosser = UIBezierPath()
        let pointer = UIBezierPath()
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
        
        pointer.move(to: CGPoint(x: carteX - 25, y: 25))
        pointer.addLine(to: CGPoint(x: carteX, y: 0))
        pointer.addLine(to: CGPoint(x: carteX + 25, y: 25))
        pointer.move(to: CGPoint(x: bounds.width - 25, y: carteY - 25))
        pointer.addLine(to: CGPoint(x: bounds.width, y: carteY))
        pointer.addLine(to: CGPoint(x: bounds.width - 25, y: carteY + 25))
        
        pointer.lineWidth = 5
        UIColor.black.setStroke()
        pointer.stroke()
        
        var points: [CGPoint] = []
        
        for i in -400...400 {
            points.append(CGPoint(x: i, y: i * i))
        }
        
        drawPoints(places: points)
    }

    func drawPoint(place: CGPoint) {
        let point = UIBezierPath(arcCenter: C(CGPoint(x: place.x, y: place.y)), radius: 3, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        point.fill()
    }
    
    func drawPoints(places: [CGPoint]) {
        for place in places {
            drawPoint(place: place)
        }
    }

    // plot(p) => plot(C(p))
    func C(_ p: CGPoint) -> CGPoint {
        let cgpoint = CGPoint(x: carteX + p.x, y: carteY - p.y)
        return cgpoint
    }
}

/*
 
 today  |
       \|/
    2020/02/02
     ________
 ->\|20200202|/<-
 
 iOS => Math
 (0, 0) => (-400, -450)
 (x, y) => (x + p, y + q)
 
 (x, y) => (x, -y)
 (-400, -450) => (-400, 450)
 
 iOS <= Math
 (x - p, y - q) <= (x, y)
 (x, -y) <= (x, y)
 
 */
