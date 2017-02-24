# MTRipple
Easily creating Ripple Effect in your project with dynamic size. 
MTRipple written in Swift 3.0 and easy to use in project.

![BackgroundImage](https://github.com/manekdilip/MTRipple/blob/master/Images/MTRipple.gif)
![BackgroundImage](https://github.com/manekdilip/MTRipple/blob/master/Images/custom MTRipple.gif)

#Installation

### Manually

Clone or Download this Repo. Then simply drag the class ```MTRipple.swift``` to your Xcode project.


###Simply way to integrate ```MTRipple```

###Implement ```MTRipple```

``` Create an objcet of class.```

    var ripple:MTRipple!


###Start Animation

```
    ripple = MTRipple.init(frame:CGRect(x: 0.0, y: 0.0, width: self.animateView.frame.size.width, height: self.animateView.frame.size.height)).startViewAniamtion(animationTime: 6.0, animateView: self.animateView) as! MTRipple
```

###Add Custom Shadow Color

```
    ripple.setShadowColor(UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.5))

```
###Add Dynamic Image For Ripple Effect

```
    ripple.setImage(UIImage.init(named: "circle2.png")!)
```

###Add Custom ShadowOffset

```
    ripple.setShadowOffset(CGSize(width: 0.5, height: 0.5))
    
    Note: Add value 0 to 1 Only
```

###Hide Animation

```
    ripple.hideAnimation()
```
