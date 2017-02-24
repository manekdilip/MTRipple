//
//  AnimationVC.swift
//  MTRipple
//
//  Created by Sazzad Iproliya on 23/02/17.
//  Copyright © 2017 Dilip Manek. All rights reserved.
//

import Foundation
import UIKit

class AnimationVC: UIViewController{
    
    @IBOutlet var animateView: UIView!
    
    var ripple:MTRipple!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showTap(_ sender: Any) {
        ripple = MTRipple.init(frame:CGRect(x: 0.0, y: 0.0, width: self.animateView.frame.size.width, height: self.animateView.frame.size.height)).startViewAniamtion(animationTime: 6.0, animateView: self.animateView) as! MTRipple
        
//        ripple.setShadowColor(UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.5))
//        ripple.setImage(UIImage.init(named: "circle2.png")!)
//          ripple.setShadowOffset(CGSize(width: 0.5, height: 0.5))
          
    }
    @IBAction func hideTap(_ sender: Any) {
        ripple.hideAnimation()
    }
}
