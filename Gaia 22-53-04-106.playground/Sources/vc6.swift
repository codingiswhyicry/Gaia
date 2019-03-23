import Foundation
import UIKit

public class vc6: UIViewController {
    
    //debris being stored
    var storageView = UIImageView()
    var storageImage = UIImage.gifImageWithName("SATELLITE-STORAGE")
    
    var infoView = UIImageView()
    
    let imageView = UIImageView()
    
    var pageControl = UIImageView()
    
    open override func viewDidLoad() {
        
        pageControl.frame = CGRect(x: 79, y: 639, width: 160, height: 30)
        pageControl.image = UIImage(named: "PAGECONTROL-5")
        
        imageView.addSubview(pageControl)
        storageView.frame = CGRect(x: 28, y: 187, width: 320, height: 287)
        storageView.image = storageImage
        
        infoView.frame = CGRect(x: 182, y: 37, width: 169, height: 109)
        infoView.image = UIImage(named: "INFO-11")
        
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        
        view.addSubview(imageView)
        imageView.addSubview(storageView)
        imageView.addSubview(infoView)
    }
}
