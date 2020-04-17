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
        
//        excercise922()
//        excercise134()
//        plimpton322()
//        excercise221cube()
//        excercise221octahedron()
//        excercise222()
//        excercise231()
//        excercise232()
        excercise242()
    }
    
    private func excercise242() {
        drawLetter("Y", x: -20, y: -360, color: .black)
        drawLetter("X", x: 340, y: 0, color: .black)
        drawLetter("O", x: -20, y: 0, color: .black)
        
        let ellipse = UIBezierPath(ovalIn: CGRect(x: bounds.width/2 - 200, y: bounds.height/2 - 120, width: 400, height: 240))
        UIColor.brown.setStroke()
        ellipse.lineWidth = 3
        ellipse.stroke()
        
        line(8, 0, 0, 6, .red, 1)
        line(-8, 0, 0, 6, .red, 1)
        line(8, 0, 5, 5.2, .blue, 3)
        line(-8, 0, 5, 5.2, .blue, 3)
        
        letter("F1", 6.5, -0.2, .black, 2)
        letter("F2", -8.5, -0.2, .black, 2)
        letter("P", 5, 6.3)
        letter("a", 10, 0.2, .red)
        letter("a", 3.9, 4, .red)
        letter("a", -4.9, 4, .red)
        letter("b", -1, 7.2)
    }
    
    private func excercise232() {
        let circle = UIBezierPath(arcCenter: CGPoint(x: bounds.width/2, y: bounds.height/2), radius: 200, startAngle: 0, endAngle: CGFloat.pi, clockwise: false)
        UIColor.brown.setStroke()
        circle.lineWidth = 3
        circle.stroke()
        
        line(-10, 0, 10, 0, .black)
        line(6, 8, 10, 0, .black)
        line(6, 8, -10, 0, .black)
        line(6, 8, 6, 0, .black)
        
        letter("1", 8, -0.2, .red)
        letter("A", 6, 9.2, .black)
        letter("B", -10.4, -0.2, .black)
        letter("C", 9.6, -0.2, .black)
        letter("D", 5.6, -0.2, .black)
    }
    
    private func excercise231() {
        line(-10, 0, 16, 13, .black)
        line(-10, 0, 10, 0, .black)
        
        line(-5, 0.5, -5, -0.5, .black)
        line(0, 0.5, 0, -0.5, .black)
        line(5, 0.5, 5, -0.5, .black)
        
        line(0, 5, -5, 0, .brown)
        line(2, 0, 14, 12, .brown)
        
        letter("1", -5.5, 2, .blue)
        letter("2", -0.5, 2, .blue)
        letter("3", 4.5, 2, .blue)
        
        letter("L", 13, 13.5, .red, 2)
        letter("L1", -1.2, 6.5, .red, 2)
        letter("L2", 1.2, -0.5, .red, 2)
    }
    
    private func excercise222() {
        drawLetter("Z", x: -20, y: -360, color: .black)
        drawLetter("X", x: 340, y: 0, color: .black)
        drawLetter("O", x: -20, y: 0, color: .black)
        
        let circle = UIBezierPath(arcCenter: CGPoint(x: bounds.width/2, y: bounds.height/2), radius: 192, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        UIColor.brown.setStroke()
        circle.lineWidth = 3
        circle.stroke()
        
        line(5, 8.09, 5, -8.09, .blue)
        line(5, 8.09, -5, 8.09, .blue)
        line(-5, -8.09, 5, -8.09, .blue)
        line(-5, -8.09, -5, 8.09, .blue)
        line(-8.09, 0, -5, 8.09, .red)
        line(-8.09, 0, -5, 0, .green)
        
        letter("A", -6, 9.3)
        letter("D", -6, 1.3, .red)
        letter("E", -9.09, 1.3, .red)
        letter("B", -9.09, 2.3)
        letter("C", -9.09, -0.3)
        
        letter("F", -6.8, 3.7, .red)
        line(-7, 2.5, 0, 0, #colorLiteral(red: 1, green: 0.1286401045, blue: 0.933419076, alpha: 1))
        
        #colorLiteral(red: 1, green: 0.1286401045, blue: 0.933419076, alpha: 1).setStroke()
        UIBezierPath(arcCenter: CGPoint(x: bounds.width/2, y: bounds.height/2), radius: 150, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).stroke()
    }
    
    private func excercise221octahedron() {
        drawLetter("Z", x: -20, y: -360, color: .black)
        drawLetter("X", x: 340, y: 0, color: .black)
        drawLetter("O", x: -20, y: 0, color: .black)

        line(0, 12.2, -8.6, 0, .blue)
        line(0, 12.2, 8.6, 0, .blue)
        line(0, -12.2, -8.6, 0, .blue)
        line(0, -12.2, 8.6, 0, .blue)
        line(0, 0, -5.8, 3.8, .red)
        
        let inCircle = UIBezierPath(arcCenter: CGPoint(x: bounds.width/2, y: bounds.height/2), radius: 140, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        UIColor.green.setStroke()
        inCircle.lineWidth = 3
        inCircle.stroke()
        
        let outRadius = CGFloat(sqrt(59600)) // (140^2 + 200^2) = 59600
        let outCircle = UIBezierPath(arcCenter: CGPoint(x: bounds.width/2, y: bounds.height/2), radius: outRadius, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        UIColor.brown.setStroke()
        outCircle.lineWidth = 3
        outCircle.stroke()
        
        letter("P", -9.5, 0)
        letter("Q", -1, 13.3)
        letter("R", -7, 5)
    }
    
    private func excercise221cube() {
        drawLetter("Z", x: -20, y: -360, color: .black)
        drawLetter("X", x: 340, y: 0, color: .black)
        drawLetter("O", x: -20, y: 0, color: .black)
        
        let a = CGFloat(7 * sqrt(2))
        line(a, 7, -a, 7, .blue)
        line(a, 7, a, -7, .blue)
        line(-a, -7, -a, 7, .blue)
        line(-a, -7, a, -7, .blue)
        line(a, 7, 0, 0, .red)
        
        let inCircle = UIBezierPath(arcCenter: CGPoint(x: bounds.width/2, y: bounds.height/2), radius: 140, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        UIColor.green.setStroke()
        inCircle.lineWidth = 3
        inCircle.stroke()
        
        let outRadius = CGFloat(sqrt(59600)) // (140^2 + 200^2) = 59600
        let outCircle = UIBezierPath(arcCenter: CGPoint(x: bounds.width/2, y: bounds.height/2), radius: outRadius, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        UIColor.brown.setStroke()
        outCircle.lineWidth = 3
        outCircle.stroke()
        
        letter("P", 10, 8)
        letter("Q", 10, 0)
        letter("R", 0, 8)
    }
    
    private func plimpton322() {
        let circle = UIBezierPath(arcCenter: CGPoint(x: bounds.width/2, y: bounds.height/2), radius: 200, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        UIColor.brown.setStroke()
        circle.lineWidth = 3
        circle.stroke()
        
        let pairs: [(Double, Double)] = [(119,169),
                                         (3367,4825),
                                         (4601,6649),
                                         (12709,18541),
                                         (65,97),
                                         (319,481),
                                         (2291,3541),
                                         (799,1249),
                                         (481,769),
                                         (4961,8161),
                                         (45,75),
                                         (1679,2929),
                                         (161,289),
                                         (1771,3229),
                                         (56,106)]
        for pair in pairs {
            let a = pair.0
            let c = pair.1
            let θ = acos(a/c)
            line(0, 0, CGFloat(10 * sin(θ)), CGFloat(10 * cos(θ)), .blue, 1)
        }
        
        letter("(119,169)", 2.2, 7.5, .black, 4.5)
        letter("(56,106)", 5.2, 3.5, .black, 4)
    }
    
    private func excercise134() {
        let circle = UIBezierPath(arcCenter: CGPoint(x: bounds.width/2, y: bounds.height/2), radius: 200, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        UIColor.brown.setStroke()
        circle.lineWidth = 3
        circle.stroke()
        
        drawLetter("O", x: -20, y: 0, color: .black)
        
        line(8, 6, 8, 0, .blue)
        line(-10, 0, 8, 0, .blue)
        line(8, 6, -10, 0, .blue)
        line(8, 6, 0, 0, .blue)
        
        letter("Q", -11, 1.2)
        letter("θ", 2, 1.4)
        letter("t", -1, 4.5)
        letter("M", 8, 7.2)
        letter("N", 7.5, -0.2)
    }
    
    private func letter(_ str: String, _ x: CGFloat, _ y: CGFloat, _ color: UIColor = .black, _ width: CGFloat = 1) {
        drawLetter(str, x: x * 20, y: -y * 20, color: color, 20 * width)
    }
    
    private func line(_ fromX: CGFloat, _ fromY: CGFloat, _ toX: CGFloat, _ toY: CGFloat, _ color: UIColor = .black, _ lineWidth: CGFloat = 3) {
        let fX = 20 * fromX + bounds.width/2
        let fY = -20 * fromY + bounds.height/2
        let tX = 20 * toX + bounds.width/2
        let tY = -20 * toY + bounds.height/2
        let path = UIBezierPath()
        path.move(to: CGPoint(x: fX, y: fY))
        path.addLine(to: CGPoint(x: tX, y: tY))
        color.setStroke()
        path.lineWidth = lineWidth
        path.stroke()
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
    
    private func drawLetter(_ letter: String, x: CGFloat, y: CGFloat, color: UIColor, _ width: CGFloat = 20) {
        let letterParagrahStyle = NSMutableParagraphStyle()
        letterParagrahStyle.alignment = .center
        let attrStr = NSAttributedString(string: letter, attributes: [.font: UIFont.systemFont(ofSize: 20), .foregroundColor: color, .paragraphStyle: letterParagrahStyle])
        attrStr.draw(in: CGRect(x: bounds.width/2 + x, y: bounds.height/2 + y, width: width, height: 20))
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
