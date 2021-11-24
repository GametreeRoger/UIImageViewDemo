//
//  MyImageView.swift
//  UIImageViewDemo
//
//  Created by 張又壬 on 2021/11/19.
//

import UIKit

class MyImageView: UIImageView {
    var name: String = "myImageView"
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        NSLog("\(name), redraw!")
    }
    
}
