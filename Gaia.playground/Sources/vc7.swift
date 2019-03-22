import Foundation
import UIKit

public class vc7: UIViewController {
    
    //debris being pushed
    var pushImageView = UIImageView()
    var pushGIF = UIImage.gifImageWithName("SATELLITE-PUSH")
    
    var infoView = UIImageView()
    
    open override func viewDidLoad() {
        
        let imageView = UIImageView()
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
