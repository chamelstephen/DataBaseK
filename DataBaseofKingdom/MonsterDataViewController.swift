//
//  MonsterDataViewController.swift
//  DataBaseofKingdom
//
//  Created by kento on 2015/12/10.
//  Copyright © 2015年 Kento Ohara. All rights reserved.
//

import UIKit

class MonsterDataViewController: UIViewController {
    
    @IBOutlet var numberLab: UILabel!
    @IBOutlet var nameLab: UILabel!
    @IBOutlet var characterImage: UIImageView!
    @IBOutlet var dataText: UITextView!
    @IBOutlet var skillBut: UIButton!
    @IBOutlet var leaderskillBut: UIButton!
    
    var MonData: NSArray = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        MonData = appDelegate.DataItemsArray //appDelegateの配列から配列を受け取る
        
        nameLab.text = "\(MonData[0])"
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
