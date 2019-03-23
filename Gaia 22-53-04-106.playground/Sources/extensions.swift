import Foundation
import UIKit

extension UIView {
//UIView extensions go here yee haw
    
    func rotate(from: CGFloat, to: CGFloat, duration: CFTimeInterval = 1.0, length: Double = 1.0) {
        
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = from
        rotateAnimation.toValue = to
        rotateAnimation.duration = duration
        rotateAnimation.repeatDuration = length
        
        self.layer.add(rotateAnimation, forKey: nil)
    }
    
    open func orbit(view: UIImageView, center: UIView, radius: Float, time: Float, delay: Double) {
        let myPath = UIBezierPath(arcCenter: center.center , radius: CGFloat(radius), startAngle: 0.0, endAngle: CGFloat(Double.pi * 2), clockwise: true).cgPath.self
        
        let orbit = CAKeyframeAnimation(keyPath: "position")
        orbit.path = myPath
        orbit.beginTime = 0.0
        orbit.rotationMode = CAAnimationRotationMode.rotateAuto
        orbit.fillMode = CAMediaTimingFillMode.forwards
        orbit.repeatCount = Float.infinity
        orbit.speed = 0.06
        orbit.isRemovedOnCompletion = false
        view.layer.add(orbit, forKey: "orbit")
        
    }
}

extension UIButton {
//UIButton extensions go here yee haw
    
}
