import Foundation
import UIKit

public class vc2: UIViewController {
    
    let crashView = UIImageView()
    var crashImage = UIImage()
    var crashInfo = UIImageView()
    
    var pageControl = UIImageView()
    let imageView = UIImageView()
    
    open override func viewDidLoad() {
        
        pageControl.frame = CGRect(x: 79, y: 639, width: 160, height: 30)
        pageControl.image = UIImage(named: "PAGECONTROL-2")
        
        imageView.addSubview(pageControl)
        
        crashImage = UIImage.gifImageWithName("SATELLITE-CRASH")!
        
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
