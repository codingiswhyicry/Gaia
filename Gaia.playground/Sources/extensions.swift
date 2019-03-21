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
}

extension UIButton {
//UIButton extensions go here yee haw
    
}
