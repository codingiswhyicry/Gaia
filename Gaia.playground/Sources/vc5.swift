import Foundation
import UIKit

public class vc5: UIViewController {
    
    // debris cycle starting point
    var debrisImageView = UIImageView()
    var debrisGif = UIImage()
    
    open override func viewDidLoad() {
        
        debrisGif = UIImage.gifImageWithName("SATELLITE-PROCESSING")!
        
        debrisImageView.frame = CGRect(x: 0, y: 180, width: 375, height: 307)
        debrisImageView.image = debrisGif
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        
        view.addSubview(imageView)
        imageView.addSubview(debrisImageView)
    }
}
