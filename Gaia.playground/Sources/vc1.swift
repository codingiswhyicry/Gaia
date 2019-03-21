import Foundation
import UIKit

public class vc1: UIViewController {
    
    //debris circling earth screen
    let imageView = UIImageView()
    let earthView = UIImageView()
    let debrisField = UIImageView()
    
    open override func viewDidLoad() {
    
        print(self.view.frame)
        
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        view.addSubview(imageView)
        
        earthView.image = UIImage(named: "EARTH-ASSET.png")
        earthView.layer.cornerRadius = earthView.frame.height / 2
        earthView.layer.masksToBounds = true
        earthView.frame = CGRect(x: 129, y: 264, width: 118, height: 118)
        imageView.addSubview(earthView)
        imageView.bringSubviewToFront(earthView)
        
        debrisField.alpha = 0.0
        debrisField.image = UIImage(named: "SPACE-DEBRIS.png")
        debrisField.frame = CGRect(x: 30, y: 151, width: 316, height: 344)
        imageView.addSubview(debrisField)
        imageView.bringSubviewToFront(debrisField)
        
        startAnimation()
        
    }

    open func startAnimation() {
    
         self.debrisField.rotate(from: 0.0, to: CGFloat(Double.pi * 2), duration: 40.0, length: 40.0)
        
        UIView.animate(withDuration: 10.0, animations: {
            
            self.debrisField.alpha = 1.0
            
        })
    }
}

