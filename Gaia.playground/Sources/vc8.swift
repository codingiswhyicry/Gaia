import Foundation
import UIKit

public class vc8: UIViewController {
    
    //gaia circling the earth
    
    var earthView = UIImageView()
    var gaia = UIImageView()
    
    var infoLabel = UIImageView
    var btsButton = UIButton()
    
    open override func viewDidLoad() {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        
        view.addSubview(imageView)
    }
}
