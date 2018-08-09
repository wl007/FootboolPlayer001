//
//  GuiderController.swift
//  FootboolPlayer
//
//  Created by IOSDevelop on 2018/8/6.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class GuiderController: UIPageViewController ,UIPageViewControllerDataSource{
  var heading = ["STAR- MESSI10","STAR- CR7","STAR-Neymar10"]
    var imgName = ["messi","cr7","neimar"]
    var footer = ["阿根廷🇦🇷超巨MESSI10","葡萄牙🇵🇹超巨C罗","巴西🇧🇷超巨内马尔"]
    
    //var index = 0
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! ContentViewController).index
        index-=1
        return getNextController(atIndex:index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! ContentViewController).index
        index+=1
        return getNextController(atIndex:index)
    }
    

    func getNextController(atIndex:Int)->ContentViewController?{
        
        if case 0..<heading.count=atIndex{

            if let content = storyboard?.instantiateViewController(withIdentifier: "ContentController") as? ContentViewController{
                
                content.heading = heading[atIndex]
                content.imageName = imgName[atIndex]
                content.footer = footer[atIndex]
                content.index = atIndex
                return content
                
            }
        }
        
        return nil
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        if let startPage = getNextController(atIndex: 0){
            setViewControllers([startPage] , direction: .forward, animated: true, completion: nil)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
