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
        
        excercise922()
    }
    
    private func excercise922() {
        let circle = UIBezierPath(arcCenter: CGPoint(x: bounds.width/2, y: bounds.height/2), radius: 200, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        UIColor.brown.setStroke()
        circle.lineWidth = 3
        circle.stroke()
        
        let cone = UIBezierPath()
        cone.move(to: CGPoint(x: bounds.width/2, y: bounds.height/2))
        cone.addLine(to: CGPoint(x: bounds.width/2 - 200, y: bounds.height/2 - 200))
        cone.addLine(to: CGPoint(x: bounds.width/2 + 200, y: bounds.height/2 - 200))
        cone.close()
        UIColor.green.setStroke()
        cone.lineWidth = 3
        cone.stroke()
        
        let cylinder = UIBezierPath()
        
        cylinder.move(to: CGPoint(x: bounds.width/2 - 200, y: bounds.height/2 - 200))
        cylinder.addLine(to: CGPoint(x: bounds.width/2 - 200, y: bounds.height/2))
        
        cylinder.move(to: CGPoint(x: bounds.width/2 + 200, y: bounds.height/2 - 200))
        cylinder.addLine(to: CGPoint(x: bounds.width/2 + 200, y: bounds.height/2))
        
        UIColor.blue.setStroke()
        cylinder.lineWidth = 3
        cylinder.stroke()
        
        let line = UIBezierPath()
        line.move(to: CGPoint(x: bounds.width/2, y: bounds.height/2 - 80))
        line.addLine(to: CGPoint(x: bounds.width/2 + 200, y: bounds.height/2 - 80))
        UIColor.red.setStroke()
        line.lineWidth = 3
        line.stroke()
        
        drawLetter("Z", x: -20, y: -360, color: .black)
        drawLetter("X", x: 340, y: 0, color: .black)
        drawLetter("O", x: -20, y: 0, color: .black)
        
        drawLetter("A", x: -20, y: -90, color: .black)
        drawLetter("B", x: 65, y: -105, color: .black)
        drawLetter("C", x: 160, y: -80, color: .black)
        drawLetter("D", x: 205, y: -90, color: .black)
        drawLetter("P", x: -20, y: -225, color: .black)
        drawLetter("Q", x: 190, y: -225, color: .black)
    }
    
    private func drawLetter(_ letter: String, x: CGFloat, y: CGFloat, color: UIColor) {
        let letterParagrahStyle = NSMutableParagraphStyle()
        letterParagrahStyle.alignment = .center
        let attrStr = NSAttributedString(string: letter, attributes: [.font: UIFont.systemFont(ofSize: 20), .foregroundColor: color, .paragraphStyle: letterParagrahStyle])
        attrStr.draw(in: CGRect(x: bounds.width/2 + x, y: bounds.height/2 + y, width: 20, height: 20))
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
