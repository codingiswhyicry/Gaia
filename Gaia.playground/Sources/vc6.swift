import Foundation
import UIKit

public class vc6: UIViewController {
    
    //debris being stored 
    open override func viewDidLoad() {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        
        view.addSubview(imageView)
    }
}
