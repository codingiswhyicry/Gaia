import Foundation
import UIKit

public class vc6: UIViewController {
    
    //debris being stored
    var storageView = UIImageView()
    var storageImage = UIImage.gifImageWithName("SATELLITE-STORAGE")
    
    var infoView = UIImageView()
    
    open override func viewDidLoad() {
        
        storageView.frame = CGRect(x: 28, y: 187, width: 320, height: 287)
        storageView.image = storageImage
        
        infoView.frame = CGRect(x: 182, y: 37, width: 169, height: 109)
        infoView.image = UIImage(named: "INFO-11")
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        
        view.addSubview(imageView)
        imageView.addSubview(storageView)
        imageView.addSubview(infoView)
    }
}
