//
//  PlayerDetailViewController.swift
//  FootboolPlayer
//
//  Created by IOSDevelop on 2018/7/18.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UIViewController {
    @IBOutlet weak var playerImg: UIImageView!
    
    var imageName = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        playerImg.image=UIImage(named: imageName)
        navigationItem.largeTitleDisplayMode =  .never
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage=UIImage()
        //navigationController?.navigationBar.shadowOpacity = 0
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
