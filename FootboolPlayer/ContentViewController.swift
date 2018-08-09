//
//  ContentViewController.swift
//  FootboolPlayer
//
//  Created by IOSDevelop on 2018/8/6.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    @IBOutlet weak var labelLeading: UILabel!
    
    @IBOutlet weak var pController: UIPageControl!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelFooter: UILabel!
    
    @IBAction func btGo(_ sender: Any) {
        let  defaluts = UserDefaults.standard
        defaluts.set(true, forKey: "isShowindex")
        self.dismiss(animated: true, completion: nil)
    }
    var  index = 0
    var heading = ""
    var footer = ""
    var imageName = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        labelLeading.text = heading
        labelFooter.text = footer
        imageView.image = UIImage(named: imageName)
        pController.currentPage = index
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
