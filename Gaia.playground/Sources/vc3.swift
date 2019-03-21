import Foundation
import UIKit

public class vc3: UIViewController {
    
    //Gaia front intro screen
    var gaiaImage = UIImage()
    var gaiaImageView = UIImageView()
    var exploreButton = UIButton()
    
    open override func viewDidLoad() {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        
        view.addSubview(imageView)
    }
}
