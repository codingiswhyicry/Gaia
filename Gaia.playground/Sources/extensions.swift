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
        let myPath = UIBezierPath(arcCenter: center.center , radius: CGFloat(radius), startAngle: CGFloat(M_PI_2), endAngle: CGFloat(M_PI_2 + M_PI*2), clockwise: true).cgPath.self
        
        let orbit = CAKeyframeAnimation(keyPath: "position")
        orbit.path = myPath
        orbit.beginTime = CACurrentMediaTime() + delay
        orbit.rotationMode = kCAAnimationRotateAuto
        orbit.fillMode = CAMediaTimingFillMode.forwards
        orbit.repeatCount = Float.infinity
        orbit.speed = time
        orbit.isRemovedOnCompletion = false
        view.layer.add(orbit, forKey: "orbit")
        view.layoutIfNeeded()
        view.layer.setNeedsLayout()
        
    }
    
}

extension UIButton {
//UIButton extensions go here yee haw
    
}
