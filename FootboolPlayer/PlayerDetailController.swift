//
//  PlayerDetailController.swift
//  FootboolPlayer
//
//  Created by IOSDevelop on 2018/7/18.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class PlayerDetailController: UITableViewController {
    
    
    @IBOutlet weak var playerDetailImg: UIImageView!
    var hearderView:UIView!
    
    var player : FootballPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
     //   playerDetailImg
        playerDetailImg.image=UIImage(named: player.image)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage=UIImage()

        
        hearderView=tableView.tableHeaderView
        tableView.tableHeaderView=nil
        tableView.addSubview(hearderView)
        tableView.contentInset = UIEdgeInsets(top: 250, left: 0, bottom: 0, right: 0)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("scroll height",scrollView.contentOffset)
        //heade
        hearderView.frame = CGRect(x: 0, y: scrollView.contentOffset.y, width: scrollView.bounds.width, height: -scrollView.contentOffset.y)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 7
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = String(describing: PlayerDetailCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! PlayerDetailCell

        // Configure the cell...

        switch indexPath.row {
        case 0:
            cell.keyLabel.text = "NAME"
            cell.valueLabel.text = player.name
            break
        case 1:
            cell.keyLabel.text = "SEX"
            cell.valueLabel.text = player.sex
            break
        case 2:
            cell.keyLabel.text = "COUNTRY"
            cell.valueLabel.text = player.country
            break
        case 3:
            cell.keyLabel.text = "CLUB"
            cell.valueLabel.text = player.club
            break
        case 4:
            cell.keyLabel.text = "AGE"
            cell.valueLabel.text = player.age
            break
        case 5:
            cell.keyLabel.text = "STAR"
        
            cell.valueLabel.text = player.isStar ? "✨" :"NO"
            break
        case 6:
            cell.keyLabel.isHidden=true
            cell.valueLabel.text = player.desc
            break
        default:
            cell.keyLabel.text = "NAME"
            cell.valueLabel.text = player.name
        }
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
