import Foundation
import UIKit

public class vc7: UIViewController {
    
    //debris being pushed
    var pushImageView = UIImageView()
    var pushGIF = UIImage.gifImageWithName("SATELLITE-PUSH")
    
    var infoView = UIImageView()
    var pageControl = UIImageView()
    
    let imageView = UIImageView()
    
    open override func viewDidLoad() {
        
        pageControl.frame = CGRect(x: 79, y: 639, width: 160, height: 30)
        pageControl.image = UIImage(named: "PAGECONTROL-7")
        
        imageView.addSubview(pageControl)
        
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        
        pushImageView.frame = CGRect(x: 28, y: 194, width: 320, height: 287)
        pushImageView.image = pushGIF
        
        infoView.frame = CGRect(x: 23, y: 481, width: 200, height: 136)
        infoView.image = UIImage(named: "INFO-12")
        
        view.addSubview(imageView)
        imageView.addSubview(pushImageView)
        imageView.addSubview(infoView)
    }
}
