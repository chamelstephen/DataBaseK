//
//  DataViewController.swift
//  DataBaseofKingdom
//
//  Created by kento on 2015/12/09.
//  Copyright © 2015年 Kento Ohara. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {
    
    var mysegmentedcontroll: UISegmentedControl = UISegmentedControl(items: ["武将","装備品"])
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mysegmentedcontroll.center = CGPoint(x: self.view.frame.width/2, y: 0)
        
        mysegmentedcontroll.selectedSegmentIndex = 1
        mysegmentedcontroll.frame = CGRect(x: 0, y: 50, width: self.view.bounds.width/2, height: 30)
        
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
