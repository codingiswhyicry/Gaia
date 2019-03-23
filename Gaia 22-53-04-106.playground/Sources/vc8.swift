import Foundation
import UIKit

public class vc8: UIViewController {
    
    //gaia circling the earth
    
    let imageView = UIImageView()
    
    var earthView = UIImageView()
    var gaia = UIImageView()
    
    var orbitLayer = CAShapeLayer()
    
    var infoLabel = UIImageView()
    var pageControl = UIImageView()
    
    open override func viewDidLoad() {
        
        pageControl.frame = CGRect(x: 108, y: 639, width: 160, height: 30)
        pageControl.image = UIImage(named: "PAGECONTROL-8")
        
        imageView.addSubview(pageControl)
        
        orbitLayer.path = UIBezierPath(arcCenter: CGPoint(x: 186, y: 334), radius: CGFloat(135), startAngle: 0, endAngle:  CGFloat(2 * Double.pi), clockwise: true).cgPath
        orbitLayer.fillColor = UIColor.clear.cgColor
        orbitLayer.strokeColor = UIColor.white.cgColor
        orbitLayer.lineWidth = 0.5
        orbitLayer.opacity = 1.0
        imageView.layer.insertSublayer(orbitLayer, at: 0)
    
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        
        earthView.image = UIImage(named: "EARTH-ASSET.png")
        earthView.layer.cornerRadius = earthView.frame.height / 2
        earthView.layer.masksToBounds = true
        earthView.frame = CGRect(x: 128, y: 275, width: 118, height: 118)
        
        gaia.image = UIImage(named: "GAIA-SIDE")
        gaia.frame = CGRect(x: 0, y: 0, width: 67, height: 64)
        gaia.orbit(view: gaia, center: earthView, radius: 135, time: 40.0, delay: 0.0)
        
        infoLabel.image = UIImage(named: "INFO-13")
        infoLabel.frame = CGRect(x: 54, y: 506, width: 270, height: 95)
        
        view.addSubview(imageView)
        imageView.addSubview(earthView)
        imageView.bringSubviewToFront(earthView)
        imageView.addSubview(gaia)
        imageView.addSubview(infoLabel)

    }
}
