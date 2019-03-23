import Foundation
import UIKit

public class vc5: UIViewController {
    
    // debris cycle starting point
    var debrisImageView = UIImageView()
    var debrisGif = UIImage()
    
    var infoView = UIImageView()
    let imageView = UIImageView()
    
    var pageControl = UIImageView()
    
    open override func viewDidLoad() {
        
        pageControl.frame = CGRect(x: 79, y: 639, width: 160, height: 30)
        pageControl.image = UIImage(named: "PAGECONTROL-4")
        
        imageView.addSubview(pageControl)
        
        debrisGif = UIImage.gifImageWithName("SATELLITE-PROCESSING")!
        
        debrisImageView.frame = CGRect(x: 0, y: 180, width: 375, height: 307)
        debrisImageView.image = debrisGif
        
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        
        infoView.frame = CGRect(x: 19, y: 503, width: 157, height: 109)
        infoView.image = UIImage(named: "INFO-10")
        
        view.addSubview(imageView)
        imageView.addSubview(debrisImageView)
        imageView.addSubview(infoView)
    }
}
