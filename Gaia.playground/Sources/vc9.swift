import Foundation
import UIKit

public class vc9: UIViewController {
    
    //behind the scenes drawings
    open override func viewDidLoad() {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        
        view.addSubview(imageView)
    }
}
