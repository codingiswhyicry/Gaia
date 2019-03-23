import Foundation
import UIKit

public class pageVC: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    open override func viewDidLoad() {
        
        dataSource = self
        delegate = self
        
        view.isUserInteractionEnabled = true
        
        var initialPage: Int = 0
        
        if let firstViewController = orderedVC.first {
            setViewControllers([firstViewController], direction: .forward, animated: false, completion: nil)
        }
    }
    
    private(set) lazy var orderedVC: [UIViewController] = {
        return [vc1(), vc2(), vc3(), vc5(), vc6(), vc4(), vc7(), vc8()]
    }()
    
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedVC.index(of: viewController) else {
            
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            
            return nil
        }
        
        guard orderedVC.count > previousIndex else {
            
            return nil
        }
        
        return orderedVC[previousIndex]
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedVC.index(of: viewController) else {
            return nil
            
        }
        
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = orderedVC.count
        
        guard orderedViewControllersCount != nextIndex else {
            return nil
        }
        
        guard orderedViewControllersCount > nextIndex else {
            return nil
        }
        
        return orderedVC[nextIndex]
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return orderedVC.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        guard let firstViewController = viewControllers?.first,
            let firstViewControllerIndex = orderedVC.index(of: firstViewController) else {
                return 0
        }
        
        return firstViewControllerIndex
    }
    
}
