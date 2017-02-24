//
//  MTRipple.swift
//  MTRipple
//
//  Created by Sazzad Iproliya on 23/02/17.
//  Copyright © 2017 Dilip Manek. All rights reserved.
//

import UIKit

class MTRipple: UIView {

    var view1: UIView!
    var view2: UIView!
    var view3: UIView!
    var view4: UIView!
    var view5: UIView!
    var img1: UIImageView!
    var img2: UIImageView!
    var img3: UIImageView!
    var img4: UIImageView!
    var img5: UIImageView!
    var mainView: UIView!
    var isHiddenCall:Bool = false
    
    var time:Double!
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        self.view1 = UIView.init(frame: CGRect(x: self.frame.size.width/2, y: self.frame.size.height/2, width: 0, height: 0))
        self.view2 = UIView.init(frame: CGRect(x: self.frame.size.width/2, y: self.frame.size.height/2, width: 0, height: 0))
        self.view3 = UIView.init(frame: CGRect(x: self.frame.size.width/2, y: self.frame.size.height/2, width: 0, height: 0))
        self.view4 = UIView.init(frame: CGRect(x: self.frame.size.width/2, y: self.frame.size.height/2, width: 0, height: 0))
        self.view5 = UIView.init(frame: CGRect(x: self.frame.size.width/2, y: self.frame.size.height/2, width: 0, height: 0))
        
        self.img1 = UIImageView.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.img2 = UIImageView.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.img3 = UIImageView.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.img4 = UIImageView.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.img5 = UIImageView.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        self.img1.image = UIImage.init(named: "circle.png")
        self.img2.image = UIImage.init(named: "circle.png")
        self.img3.image = UIImage.init(named: "circle.png")
        self.img4.image = UIImage.init(named: "circle.png")
        self.img5.image = UIImage.init(named: "circle.png")
        
        img1.layer.masksToBounds =  false
        img1.layer.shadowColor = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.2).cgColor
        img1.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        img1.layer.shadowOpacity = 1.0
        
        img2.layer.masksToBounds =  false
        img2.layer.shadowColor = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.2).cgColor
        img2.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        img2.layer.shadowOpacity = 1.0
        
        img3.layer.masksToBounds =  false
        img3.layer.shadowColor = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.2).cgColor
        img3.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        img3.layer.shadowOpacity = 1.0
        
        img4.layer.masksToBounds =  false
        img4.layer.shadowColor = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.2).cgColor
        img4.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        img4.layer.shadowOpacity = 1.0
        
        img5.layer.masksToBounds =  false
        img5.layer.shadowColor = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.2).cgColor
        img5.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        img5.layer.shadowOpacity = 1.0
        
        self.view1.addSubview(self.img1)
        self.view2.addSubview(self.img2)
        self.view3.addSubview(self.img3)
        self.view4.addSubview(self.img4)
        self.view5.addSubview(self.img5)
        
        self.addSubview(self.view1)
        self.addSubview(self.view2)
        self.addSubview(self.view3)
        self.addSubview(self.view4)
        self.addSubview(self.view5)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func startViewAniamtion(animationTime:Double, animateView:UIView) -> UIView
    {
        self.time = animationTime
        
        self.perform(#selector(incrementSize1), with: nil, afterDelay: 0.0)
        self.perform(#selector(incrementSize2), with: nil, afterDelay: (self.time/4.0))
        self.perform(#selector(incrementSize3), with: nil, afterDelay: (self.time/4.0)*2)
        self.perform(#selector(incrementSize4), with: nil, afterDelay: (self.time/4.0)*3)
        
        animateView.addSubview(self)
        
        return self
    }
    
    func incrementSize1()
    {
        self.view1.alpha = 1
        self.bringSubview(toFront: self.view1)
        UIView.animate(withDuration: self.time, delay: 0.0, options: .allowUserInteraction , animations: {
            self.view1.frame = CGRect(x: 1, y: 1, width: self.frame.size.width-2, height: self.frame.size.height-2)
            self.img1.frame = CGRect(x: 1, y: 1, width: self.frame.size.width-2, height: self.frame.size.height-2)
        },
                       completion:{_ in
                        UIView.animate(withDuration: self.time/self.time, delay: 0.0, options: .layoutSubviews , animations: {
                            self.view1.alpha = 0.5
                        },
                                       completion:{_ in
                                        self.view1.frame = CGRect(x: self.frame.size.width/2, y: self.frame.size.height/2, width: 0, height: 0)
                                        self.img1.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
                        })
                        if !(self.isHiddenCall){
                            self.incrementSize5()
                        }
        })
    }
    func incrementSize2()
    {
        self.view2.alpha = 1
        self.bringSubview(toFront: self.view2)
        UIView.animate(withDuration: self.time, delay: 0.0, options: .allowUserInteraction , animations: {
            self.view2.frame = CGRect(x: 1, y: 1, width: self.frame.size.width-2, height: self.frame.size.height-2)
            self.img2.frame = CGRect(x: 1, y: 1, width: self.frame.size.width-2, height: self.frame.size.height-2)
        },
                       completion:{_ in
                        UIView.animate(withDuration: self.time/self.time, delay: 0.0, options: .layoutSubviews , animations: {
                            self.view2.alpha = 0.5
                        },
                                       completion:{_ in
                                        self.view2.frame = CGRect(x: self.frame.size.width/2, y: self.frame.size.height/2, width: 0, height: 0)
                                        self.img2.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
                        })
                        if !(self.isHiddenCall){
                            self.incrementSize1()
                        }
        })
    }
    func incrementSize3()
    {
        self.view3.alpha = 1
        self.bringSubview(toFront: self.view3)
        UIView.animate(withDuration: self.time, delay: 0.0, options: .allowUserInteraction , animations: {
            self.view3.frame = CGRect(x: 1, y: 1, width: self.frame.size.width-2, height: self.frame.size.height-2)
            self.img3.frame = CGRect(x: 1, y: 1, width: self.frame.size.width-2, height: self.frame.size.height-2)
        },
                       completion:{_ in
                        UIView.animate(withDuration: self.time/self.time, delay: 0.0, options: .layoutSubviews , animations: {
                            self.view3.alpha = 0.5
                        },
                                       completion:{_ in
                                        self.view3.frame = CGRect(x: self.frame.size.width/2, y: self.frame.size.height/2, width: 0, height: 0)
                                        self.img3.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
                        })
                        if !(self.isHiddenCall){
                            self.incrementSize2()
                        }
        })
    }
    func incrementSize4()
    {
        self.view4.alpha = 1
        self.bringSubview(toFront: self.view4)
        UIView.animate(withDuration: self.time, delay: 0.0, options: .allowUserInteraction , animations: {
            self.view4.frame = CGRect(x: 1, y: 1, width: self.frame.size.width-2, height: self.frame.size.height-2)
            self.img4.frame = CGRect(x: 1, y: 1, width: self.frame.size.width-2, height: self.frame.size.height-2)
        },
            completion:{_ in
                UIView.animate(withDuration: self.time/self.time, delay: 0.0, options: .layoutSubviews , animations: {
                    self.view4.alpha = 0.5
                },
                        completion:{_ in
                            self.view4.frame = CGRect(x: self.frame.size.width/2, y: self.frame.size.height/2, width: 0, height: 0)
                            self.img4.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
                        })
                if !(self.isHiddenCall){
                    self.incrementSize3()
                }
            })
    }
    
    func incrementSize5()
    {
        self.view5.alpha = 1
        self.bringSubview(toFront: self.view5)
        UIView.animate(withDuration: self.time, delay: 0.0, options: .allowUserInteraction , animations: {
            self.view5.frame = CGRect(x: 1, y: 1, width: self.frame.size.width-2, height: self.frame.size.height-2)
            self.img5.frame = CGRect(x: 1, y: 1, width: self.frame.size.width-2, height: self.frame.size.height-2)
        },
                       completion:{_ in
                        UIView.animate(withDuration: self.time/self.time, delay: 0.0, options: .layoutSubviews , animations: {
                            self.view5.alpha = 0.5
                        },
                                       completion:{_ in
                                        self.view5.frame = CGRect(x: self.frame.size.width/2, y: self.frame.size.height/2, width: 0, height: 0)
                                        self.img5.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
                        })
                        if !(self.isHiddenCall){
                            self.incrementSize4()
                        }
        })
    }
    
    func setShadowColor(_ color:UIColor)
    {
        img1.layer.shadowColor = color.cgColor
        img2.layer.shadowColor = color.cgColor
        img3.layer.shadowColor = color.cgColor
        img4.layer.shadowColor = color.cgColor
        img5.layer.shadowColor = color.cgColor
    }
    
    func setImage(_ image:UIImage)
    {
        self.img1.image = image
        self.img2.image = image
        self.img3.image = image
        self.img4.image = image
        self.img5.image = image
    }
    
    func setShadowOffset(_ size:CGSize)
    {
        img1.layer.shadowOffset = size
        img2.layer.shadowOffset = size
        img3.layer.shadowOffset = size
        img4.layer.shadowOffset = size
        img5.layer.shadowOffset = size
    }
    
    
    func hideAnimation(){
        isHiddenCall = true
        self.removeFromSuperview()
    }
}
