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
    
    let imageView = UIImageView()
    
    open override func viewDidLoad() {
    
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        
        view.addSubview(imageView)
        
        gaiaImageView.frame = CGRect(x: 7, y: 160, width: 362, height: 348)
        gaiaImageView.image = UIImage(named: "GAIA-FRONT")
        
        explainerView.frame = CGRect(x: 18, y: 508, width: 231, height: 120)
        explainerView.image = UIImage(named: "INFO-4")
        
        partView1.frame = CGRect(x: 28, y: 69, width: 145, height: 263)
        partView1.image = UIImage(named: "INFO-5")
        
        partView2.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        partView2.image = UIImage(named: "INFO-6")
        
        partView3.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        partView3.image = UIImage(named: "INFO-7")
        
        partView4.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        partView4.image = UIImage(named: "INFO-8")
        
        exploreButton.backgroundColor = UIColor.clear
        exploreButton.frame = CGRect(x: 291, y: 561, width: 70, height: 70)
        exploreButton.addTarget(self, action: #selector(exploreAction(sender:)), for: .touchUpInside)
        exploreButton.setBackgroundImage(UIImage(named: "EXPLORE-BUTTON"), for: .normal)
        imageView.addSubview(exploreButton)
    }
    
    @objc open func exploreAction(sender: UIButton!) {
     
        print("i work!")
        //if enabled, hide explainer view and show parts view
        
        //if not enabled, hide parts view and show explainer view
        
    }
}
