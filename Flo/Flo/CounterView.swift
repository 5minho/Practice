//
//  CounterView.swift
//  Flo
//
//  Created by 오민호 on 2017. 9. 5..
//  Copyright © 2017년 Minomi. All rights reserved.
//

import UIKit

let noOfGlasses = 8
let π  = CGFloat.pi

@IBDesignable class CounterView: UIView {

    @IBInspectable var counter = 0 {
        didSet {
            if counter <= noOfGlasses {
                setNeedsDisplay()
            }
        }
    }
    @IBInspectable var outlineColor = UIColor.blue
    @IBInspectable var counterColor = UIColor.orange
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        let center = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        let radius = max(bounds.width, bounds.height)
        
        let arcWidth : CGFloat = 76
        
        let startAngle = 3 * π / 4
        let endAngle =   π / 4
        
        let arcPath = UIBezierPath(arcCenter: center,
                                   radius: radius / 2 - arcWidth / 2,
                                   startAngle: startAngle,
                                   endAngle: endAngle,
                                   clockwise: true)
        
        counterColor.setStroke()
        arcPath.lineWidth = arcWidth
        
        arcPath.stroke()
        
        let angleDifference = 2 * π - startAngle + endAngle
        let arcLengthPerGlass = angleDifference / CGFloat(noOfGlasses)
        
        let outLineAngle = arcLengthPerGlass * CGFloat(counter) + startAngle
        
        let outLinePath = UIBezierPath(arcCenter: center,
                                       radius: radius / 2 - 2.5,
                                       startAngle: startAngle,
                                       endAngle: outLineAngle,
                                       clockwise: true)
        
        outLinePath.addArc(withCenter: center,
                           radius: radius / 2 - arcWidth + 2.5,
                           startAngle: outLineAngle,
                           endAngle: startAngle,
                           clockwise: false)
        
        outLinePath.close()
        
        outlineColor.setStroke()
        outLinePath.lineWidth = 5.0
        outLinePath.stroke()
        
    }
 

}
