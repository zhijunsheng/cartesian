//
//  CanvasView.swift
//  Cartesian
//
//  Created by Grace Huang on 4/12/20.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    override func draw(_ rect: CGRect) {
        drawCoordinatePlane()
        drawPoint(x: 6, y: 9)
        drawPoint(x: -6, y: 9)
        drawPoint(x: -6, y: -9)
        drawPoint(x: 6, y: -9)
    }
    
    func drawCoordinatePlane() {
        let ruler = UIBezierPath()
        
        ruler.move(to: CGPoint(x: bounds.width / 2, y: 0))
        ruler.addLine(to: CGPoint(x: bounds.width / 2, y: bounds.height))
        
        ruler.move(to: CGPoint(x: 0, y: bounds.height / 2))
        ruler.addLine(to: CGPoint(x: bounds.width, y: bounds.height / 2))
        
        ruler.lineWidth = 3
        ruler.stroke()
        
        
        for i in -25..<25 {
            let originX: CGFloat = bounds.width / 2
            let originY: CGFloat = bounds.height / 2
            let squareSide: CGFloat = 20
            
            ruler.move(to: CGPoint(x: originX + squareSide * CGFloat(i), y: 0))
            ruler.addLine(to: CGPoint(x: originX + squareSide * CGFloat(i), y: bounds.height))
            
            ruler.move(to: CGPoint(x: 0, y: originY + squareSide * CGFloat(i)))
            ruler.addLine(to: CGPoint(x: bounds.width, y: originY + squareSide * CGFloat(i)))
            
            #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1).setStroke()
            ruler.lineWidth = 0.1
            ruler.stroke()
        }
    }
    
    func drawPoint(x: CGFloat,y: CGFloat) {
        let originX: CGFloat = bounds.width / 2
        let originY: CGFloat = bounds.height / 2
        let squareSide: CGFloat = 20

        let pen = UIBezierPath(arcCenter: CGPoint(x: originX + x * squareSide, y: originY - y * squareSide), radius: 5, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        
        pen.fill()
    }
}
