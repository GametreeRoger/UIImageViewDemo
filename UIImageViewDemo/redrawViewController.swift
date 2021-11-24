//
//  redrawViewController.swift
//  UIImageViewDemo
//
//  Created by 張又壬 on 2021/11/24.
//

import UIKit

class redrawViewController: UIViewController {

    @IBOutlet weak var scaleToFillView: CircleView!
    
    @IBOutlet weak var redrawView: CircleView!
    
    @IBOutlet weak var myImageView: MyImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scaleToFillView.name = "scaleToFillView"
        redrawView.name = "redrawView"
    }
    
    
    @IBAction func onTransform(_ sender: Any) {
        print("----- onTransform -----")
        scaleToFillView.bounds = CGRect(x: 0, y: 0, width: 100, height: 150)
        
        redrawView.bounds = CGRect(x: 0, y: 0, width: 100, height: 150)
        
        myImageView.bounds = CGRect(x: 0, y: 0, width: 100, height: 150)
    }
    
}
