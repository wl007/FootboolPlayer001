//
//  FootballPlayersTableViewController.swift
//  FootboolPlayer
//
//  Created by IOSDevelop on 2018/7/16.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class FootballPlayersTableViewController: UITableViewController {

    var players = [FootballPlayer(name:"MESSI",sex:"man",age:"31",country:"阿根廷🇦🇷",club:"巴塞罗那", desc:"""
  里奥·梅西（Lionel Messi），1987年6月24日出生于阿根廷圣菲省罗萨里奥市，阿根廷足球运动员，司职前锋，现效力于巴塞罗那足球俱乐部。
  2000年，梅西加入巴塞罗那俱乐部。2005年，阿根廷青年队夺取世青赛冠军，梅西赢得了金球奖和金靴奖双项大奖。2007年4月18日，梅西在国王杯半决赛对赫塔菲时复制了马拉多纳在世界杯上的连过五人进球。2008年北京奥运会上，梅西随阿根廷国奥队夺取了金牌。2009年底，他当选了欧洲足球先生和世界足球先生。梅西2008-2009赛季率领球队连夺西甲、国王杯和欧冠三个冠军。2011年，梅西获得首届国际足联金球奖，还获得了欧足联欧洲最佳球员。2013年，他以46粒联赛进球的成绩第三次获得欧洲金靴奖奖杯。2014年，梅西随阿根廷队参加2014巴西世界杯。2014年巴西世界杯上，获得世界杯亚军 [1]  。
  2014年12月20日，梅西被IFFHS评为2013年世界职业联赛的最佳射手奖 [2]  。2015年8月，当选欧洲超级杯最佳球员。 [3]  2015年8月27日，获得欧洲最佳球员。 [4]  2016年1月12日，梅西荣膺2015年度FIFA金球奖，五度得奖创纪录。2016年6月，在连续三次决赛（2014年世界杯、2015年美洲杯、2016年美洲杯）失利后，梅西正式宣布将退出阿根廷国家队。 [5]  8月13日，梅西正式回归阿根廷国家队。
  2017年11月24日，梅西领取了2016-17赛季的欧洲金靴奖，这也是其个人第四座欧洲金靴奖，四夺欧洲金靴也追平了C罗的纪录。11月25日，巴萨官方和梅西续约到2020-21赛季 [6]
  """, image:"messi", isStar:true,isSave:false),
                   FootballPlayer(name:"Cristiano Ronaldo",sex:"man",age:"33",country:"葡萄牙🇵🇹",club:"尤文图斯",desc:"""
克里斯蒂亚诺·罗纳尔多·多斯·桑托斯·阿维罗（Cristiano Ronaldo dos Santos Aveiro），简称“C罗”，1985年2月5日出生于葡萄牙马德拉岛丰沙尔，职业足球运动员，司职边锋、中锋，现效力于意大利尤文图斯足球俱乐部，并身兼葡萄牙国家男子足球队队长。 [1-2]  C罗带球速度极快，善于突破和射门，拥有强悍的身体素质，技术非常全面。 [3]
C罗出道于里斯本竞技。2003年加盟英超曼联，期间获得了英格兰足球超级联赛冠军、欧洲冠军联赛冠军、世俱杯冠军等十个赛事冠军。2009年6月以身价9600万欧元转会至西甲皇马，期间获得了4次欧洲冠军联赛冠军、2次西甲联赛冠军、3次世俱杯冠军等十六个赛事冠军。C罗效力皇马9年时间，438场比赛贡献450球、131次助攻，以场均1.03球的进球率成为皇马历史上进球率最高的球员。 [4]
C罗职业生涯保持着多项个人记录，包括欧洲五大联赛个人总进球记录、皇马俱乐部个人总进球记录、欧冠联赛个人总进球记录、欧洲国家队个人总进球记录等。C罗已5次获得金球奖、3次获得世界足球先生、4次获得欧洲金靴奖、7次获得欧冠最佳射手等个人荣誉。
2016年7月，C罗带领葡萄牙获得2016年法国欧洲杯冠军，这是葡萄牙国家队历史上的第一个国际大赛冠军。 [5]  2018年7月10日，转会至意甲尤文图斯 [6]  。
""", image:"cr7",isStar:true,isSave:false),
                   FootballPlayer(name:"Beckham",sex:"man",age:"43",country:"英国🇬🇧",club:"皇家马德里（退役）",desc:"beckham", image:"beckham",isStar:true,isSave:false),
                   FootballPlayer(name:"Ronaldo ",sex:"man",age:"42",country:"巴西🇧🇷",club:"皇家马德里",desc:"", image:"ronaldo",isStar:true,isSave:false)]
    
    var playerCards = ["messi","cr7","beckham","ronaldo"]
    
    @IBAction func saveBt(_ sender: UIButton) {
        
        let pos = sender.convert(CGPoint.zero, to: self.tableView)
        let indexPath = tableView.indexPathForRow(at: pos)!
        self.players[indexPath.row].isSave = !self.players[indexPath.row].isSave
        let cell = tableView.cellForRow(at: indexPath) as! PlayerCellTableViewCell
        cell.saveImage.setImage(players[indexPath.row].isSave ? UIImage(named: "save") :UIImage(named:"unsave"), for: .normal)
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        UserDefaults.standard.removeObject(forKey: "isShowindex")
        navigationController?.navigationBar.largeTitleTextAttributes=[NSAttributedStringKey.foregroundColor:UIColor(named: "theme")!]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        if !UserDefaults.standard.bool(forKey:"isShowindex"){
            
            if let page = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "GuideController") as? GuiderController{
                
                present(page, animated: true, completion: nil)
            }
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        
      
//        }else{
//            UserDefaults.standard.removeObject(forKey: "isShowindex")
//        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return players.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerCell", for: indexPath) as! PlayerCellTableViewCell

        cell.couintry .text = players[indexPath.row].country
        cell.Desc.text = players[indexPath.row].age + "岁,效力于：" + players[indexPath.row].club
        cell.PlayerName.text = players[indexPath.row].name
       cell.PlayerCard.image = UIImage(named: playerCards[indexPath.row])
        //cell.saveImage.image = players[indexPath.row].isSave ? UIImage(named: //"save") :UIImage(named:"unsave")
       cell.saveImage.setImage(players[indexPath.row].isSave ? UIImage(named: "save") :UIImage(named:"unsave"), for: .normal) 

        return cell
    }
   

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            players.remove(at: indexPath.row)
            playerCards.remove(at: indexPath.row)
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
 

    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delAction =  UIContextualAction(style: .destructive, title: "删除1") { (_, _, completion) in
            
            self.players.remove(at: indexPath.row)
            self.playerCards.remove(at: indexPath.row)
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
            completion(true)
        }
        let shareAction = UIContextualAction(style: .normal, title: "分享") { (_, _, completion) in
            let text = self.players[indexPath.row].name
            let image = UIImage(named: self.playerCards[indexPath.row])!
            let ac = UIActivityViewController(activityItems: [text,image], applicationActivities: nil)
            self.present(ac, animated: true)
            completion(true)
        }
        let  config = UISwipeActionsConfiguration(actions: [delAction,shareAction])
        return config
    }
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let shareAction = UITableViewRowAction(style: .destructive, title: "分享") { (_, indexPath) in
            
            let shareSheet = UIAlertController(title: "分享", message: "", preferredStyle: .actionSheet)
            let QQ = UIAlertAction(title: "QQ", style: .default, handler:nil)
            let wx = UIAlertAction(title: "微信", style: .default, handler: nil)
             let wb = UIAlertAction(title: "    微博", style: .default, handler: nil)
            //shareAction.
            shareSheet.addAction(QQ)
            shareSheet.addAction(wx)
            shareSheet.addAction(wb)
            self.present(shareSheet, animated: true, completion: nil)
            
            
        }
        
        shareAction.backgroundColor = .orange
        let deleteAction = UITableViewRowAction(style: .default, title: "删除") { (_,  indexPath) in
            
            self.players.remove(at: indexPath.row)
            self.playerCards.remove(at: indexPath.row)
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        return [deleteAction,shareAction]
    }
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

    
   //  MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using
        //segue.destinationViewController.
         //Pass the selected object to the new view controller.
        let row = tableView.indexPathForSelectedRow!.row
        let destination=segue.destination as! PlayerDetailController
        //destination.
        destination.player = players[row]
    }
    

}
