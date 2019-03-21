import Foundation
import UIKit

public class vc5: UIViewController {
    
    // debris cycle starting point
    open override func viewDidLoad() {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        
        view.addSubview(imageView)
    }
}
