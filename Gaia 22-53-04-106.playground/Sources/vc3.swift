import Foundation
import UIKit

public class vc3: UIViewController {
    
    var isShowingParts: Bool = false
    
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
    
    var pageControl = UIImageView()
    
    open override func viewDidLoad() {
        
        pageControl.frame = CGRect(x: 108, y: 639, width: 160, height: 30)
        pageControl.image = UIImage(named: "PAGECONTROL-3")
        
        imageView.addSubview(pageControl)
        
        self.view.isUserInteractionEnabled = true
    
        imageView.image = UIImage(named: "SKY-BACKGROUND.png")
        imageView.frame = self.view.bounds
        imageView.isUserInteractionEnabled = true
        
        view.addSubview(imageView)
        
        gaiaImageView.frame = CGRect(x: 7, y: 160, width: 362, height: 348)
        gaiaImageView.image = UIImage(named: "GAIA-FRONT")
        
        explainerView.frame = CGRect(x: 18, y: 508, width: 231, height: 120)
        explainerView.image = UIImage(named: "INFO-4")
        explainerView.alpha = 1.0
        
        partView1.frame = CGRect(x: 28, y: 69, width: 145, height: 263)
        partView1.image = UIImage(named: "INFO-5")
        partView1.alpha = 0.0
        
        partView2.frame = CGRect(x: 253, y: 92, width: 102, height: 295)
        partView2.image = UIImage(named: "INFO-6")
        partView2.alpha = 0.0
        
        partView3.frame = CGRect(x: 223, y: 428, width: 131, height: 107)
        partView3.image = UIImage(named: "INFO-7")
        partView3.alpha = 0.0
        
        partView4.frame = CGRect(x: 21, y: 381, width: 215, height: 261)
        partView4.image = UIImage(named: "INFO-8")
        partView4.alpha = 0.0
        
        exploreButton.backgroundColor = UIColor.clear
        exploreButton.frame = CGRect(x: 291, y: 561, width: 70, height: 70)
        exploreButton.isUserInteractionEnabled = true
        exploreButton.addTarget(self, action: #selector(exploreAction(sender:)), for: .touchUpInside)
        exploreButton.setBackgroundImage(UIImage(named: "EXPLORE-BUTTON"), for: .normal)
        
        
        imageView.addSubview(gaiaImageView)
        imageView.addSubview(explainerView)
        
        imageView.addSubview(partView1)
        imageView.addSubview(partView2)
        imageView.addSubview(partView3)
        imageView.addSubview(partView4)
        
        imageView.addSubview(exploreButton)
    }
    
    @objc open func exploreAction(sender: UIButton!) {
     
        //if false, hide explainer view and show parts view
        
        if isShowingParts == false {
            
            UIView.animate(withDuration: 1.0, animations: {
                
                self.explainerView.alpha = 0.0
                
            }, completion: { Void in
                
                self.isShowingParts = true
                
                UIView.animate(withDuration: 0.5, animations: {
                    
                    self.partView1.alpha = 1.0
                    self.partView2.alpha = 1.0
                    self.partView3.alpha = 1.0
                    self.partView4.alpha = 1.0
                    
                })
            })
            
        } else if isShowingParts == true {
            
            UIView.animate(withDuration: 1.0, animations: {
                
                self.partView1.alpha = 0.0
                self.partView2.alpha = 0.0
                self.partView3.alpha = 0.0
                self.partView4.alpha = 0.0
                
            }, completion: { Void in
                
                self.isShowingParts = false
                
                UIView.animate(withDuration: 0.5, animations: {
                    
                    self.explainerView.alpha = 1.0
                })
            })
        }
        
        //if true, hide parts view and show explainer view
        
    }
}
