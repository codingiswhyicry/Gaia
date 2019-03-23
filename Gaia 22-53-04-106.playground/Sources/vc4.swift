import Foundation
import UIKit

public class vc4: UIViewController {
    
    //Gaia Side Intro page
    
    var gaiaImageView = UIImageView()
    var partsView = UIImageView()
    
    var pageControl = UIImageView()
    let imageView = UIImageView()
    
    open override func viewDidLoad() {
        
        pageControl.frame = CGRect(x: 79, y: 639, width: 160, height: 30)
        pageControl.image = UIImage(named: "PAGECONTROL-6")
        
        imageView.addSubview(pageControl)
        
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        
        gaiaImageView.frame = CGRect(x: 58, y: 206, width: 259, height: 250)
        gaiaImageView.image = UIImage(named: "GAIA-SIDE")
        
        partsView.frame = CGRect(x: 147, y: 330, width: 199, height: 269)
        partsView.image = UIImage(named: "INFO-9")
        
        view.addSubview(imageView)
        imageView.addSubview(gaiaImageView)
        imageView.addSubview(partsView)
    }
}
