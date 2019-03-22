import Foundation
import UIKit

public class vc2: UIViewController {
    
    let crashView = UIImageView()
    var crashImage = UIImage()
    var crashInfo = UIImageView()
    
    //satellite crashing screen
    open override func viewDidLoad() {
        
        crashImage = UIImage.gifImageWithName("SATELLITE-CRASH")!
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        
        crashView.frame = CGRect(x: 0, y: 0, width: 414, height: 736)
        crashView.image = crashImage
        imageView.addSubview(crashView)
        
        crashInfo.frame = CGRect(x: 10, y: 10, width: 216, height: 101)
        crashInfo.image = UIImage(named: "INFO-3")
        
        view.addSubview(imageView)
        imageView.addSubview(crashView)
        imageView.addSubview(crashInfo)
    }
    
    
    
}
