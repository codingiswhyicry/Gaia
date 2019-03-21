import Foundation
import UIKit

public class pageVC: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    var pages: Array<UIViewController> = [vc1(), vc2(), vc3(), vc4(), vc5(), vc6(), vc7(), vc8()]
    let pageControl = UIPageControl()
    
    open override func loadView() {
        
        self.dataSource = self
        self.delegate = self
        
        var initialPage: Int = 0
        
        self.pageControl.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.width, height:  100)
        self.pageControl.currentPageIndicatorTintColor = UIColor.white
        self.pageControl.pageIndicatorTintColor = UIColor.darkGray
        self.pageControl.numberOfPages = self.pages.count
        self.pageControl.currentPage = initialPage
        self.view.addSubview(self.pageControl)
    }
    
    //Page View Controller Stub #1
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        if let viewControllerIndex = self.pages.index(of: viewController) {
            
            if viewControllerIndex == 0 {
                
                return self.pages.last
                
            } else {
    
                return self.pages[viewControllerIndex - 1]
            }
        }
        
        return nil
    }
    
    //Page View Controller Stub #2
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        if let viewControllerIndex = self.pages.index(of: viewController) {
            
            if viewControllerIndex < self.pages.count - 1 {
                
                return self.pages[viewControllerIndex + 1]
                
            } else {
                
                return self.pages.first
            }
        }
        
        return nil
    }
}
