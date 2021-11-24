//
//  CircleView.swift
//  UIImageViewDemo
//
//  Created by 張又壬 on 2021/11/23.
//

import UIKit

class CircleView: UIView {

    var lineWidth: CGFloat = 5
    
    var color: UIColor = .red
    
    var name: String = ""

    public override func draw(_ rect: CGRect) {
        let circleCenter = convert(center, from: superview)
        let circleRadius = min(bounds.size.width,bounds.size.height)/2 * 0.80
        let circlePath = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: 0, endAngle: CGFloat(2*Double.pi), clockwise: true)
        circlePath.lineWidth = lineWidth
        color.set()
        circlePath.stroke()
        print("\(name), redraw")
    }

}
