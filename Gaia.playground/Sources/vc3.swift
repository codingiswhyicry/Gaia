import Foundation
import UIKit

public class vc3: UIViewController {
    
    //Gaia front intro screen
    var gaiaImageView = UIImageView()
    var exploreButton = UIButton()
    
    //UIImageView explaining what Gaia is
    var explainerView = UIImageView()
    
    var partView1 = UIImageView()
    var partView2 = UIImageView()
    var partView3 = UIImageView()
    var partView4 = UIImageView()
    
    open override func viewDidLoad() {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        
        view.addSubview(imageView)
        
        explainerView.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        explainerView.image = UIImage(named: "INFO-4")
        
        partView1.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        partView1.image = UIImage(named: "INFO-5")
        
        partView2.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        partView2.image = UIImage(named: "INFO-6")
        
        partView3.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        partView3.image = UIImage(named: "INFO-7")
        
        partView4.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        partView4.image = UIImage(named: "INFO-8")

    }
    
    @objc open func buttonAction(sender: UIButton!) {
     
        //if enabled, hide explainer view and show parts view
        
        //if not enabled, hide parts view and show explainer view
        
    }
}
