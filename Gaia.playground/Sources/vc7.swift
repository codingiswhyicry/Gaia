import Foundation
import UIKit

public class vc7: UIViewController {
    
    //debris being pushed
    open override func viewDidLoad() {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        
        view.addSubview(imageView)
    }
}
