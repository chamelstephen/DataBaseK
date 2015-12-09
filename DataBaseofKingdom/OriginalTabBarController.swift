//
//  OriginalTabBarController.swift
//  DataBaseofKingdom
//
//  Created by kento on 2015/12/09.
//  Copyright © 2015年 Kento Ohara. All rights reserved.
//

import Foundation
import UIKit

class OriginalTabBarController: UITabBarController {
    
    var HomeView: UITabBarController!
    var DataView: UITabBarController!
    var DungonView: UITabBarController!
    var OtherView: UITabBarController!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        HomeView = UITabBarController()
        DataView = UITabBarController()
        DungonView = UITabBarController()
        OtherView = UITabBarController()
        
        HomeView.tabBarItem = UITabBarItem(title: "ホーム", image: UIImage(named: "ic_home.png"), tag: 0)
        DataView.tabBarItem = UITabBarItem(title: "データ", image: UIImage(named: "ic_format_list_bulleted.png"), tag: 1)
        DungonView.tabBarItem = UITabBarItem(title: "ダンジョン", image: UIImage(named: "ic_games.png"), tag: 2)
        OtherView.tabBarItem = UITabBarItem(title: "その他", image: UIImage(named: "ic_more_horiz.png"), tag: 3)
        
        var HomeViewNavigationController = UINavigationController(rootViewController: HomeView)
        var DataViewNavigationController = UINavigationController(rootViewController: DataView)
        var DungonViewNavigationController = UINavigationController(rootViewController: DungonView)
        var OtherViewNavigationController = UINavigationController(rootViewController: OtherView)
        
        self.setViewControllers([HomeViewNavigationController, DataViewNavigationController, DungonViewNavigationController, OtherViewNavigationController], animated: false)
        
        //ソース：http://www.tejitak.com/blog/?p=1027を参照
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
