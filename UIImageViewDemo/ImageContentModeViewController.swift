//
//  ImageContentModeViewController.swift
//  UIImageViewDemo
//
//  Created by 張又壬 on 2021/11/23.
//

import UIKit

class ImageContentModeViewController: UIViewController {
    @IBOutlet weak var circleImageView: MyImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onScaleToFill(_ sender: Any) {
        print("scale to fill")
        circleImageView.bounds = CGRect(x: 0, y: 0, width: 250, height: 300)
        circleImageView.contentMode = .scaleToFill
    }
    
    @IBAction func onAspectFit(_ sender: Any) {
        print("scale aspect fit")
        circleImageView.bounds = CGRect(x: 0, y: 0, width: 250, height: 300)
        circleImageView.contentMode = .scaleAspectFit
    }
    
    @IBAction func onAspectFill(_ sender: Any) {
        print("scale aspect fill")
        circleImageView.bounds = CGRect(x: 0, y: 0, width: 250, height: 300)
        circleImageView.contentMode = .scaleAspectFill
    }
    
    @IBAction func onArrow(_ sender: UIButton) {
        circleImageView.bounds = CGRect(x: 0, y: 0, width: 250, height: 250)
        let tag = Arrow(rawValue: sender.tag)
        print("arrow:\(tag)")
        switch tag {
        case .center:
            circleImageView.contentMode = .center
        case .top:
            circleImageView.contentMode = .top
        case .bottom:
            circleImageView.contentMode = .bottom
        case .left:
            circleImageView.contentMode = .left
        case .right:
            circleImageView.contentMode = .right
        case .topLeft:
            circleImageView.contentMode = .topLeft
        case .topRight:
            circleImageView.contentMode = .topRight
        case .bottomLeft:
            circleImageView.contentMode = .bottomLeft
        case .bottomRight:
            circleImageView.contentMode = .bottomRight
        default:
            circleImageView.contentMode = .center
        }
    }
    
}

enum Arrow: Int {
    case center = 0
    case top = 1
    case bottom = 2
    case left = 3
    case right = 4
    case topLeft = 5
    case topRight = 6
    case bottomLeft = 7
    case bottomRight = 8
}
