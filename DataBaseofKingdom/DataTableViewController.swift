//
//  DataTableViewController.swift
//  DataBaseofKingdom
//
//  Created by kento on 2015/12/10.
//  Copyright © 2015年 Kento Ohara. All rights reserved.
//

import UIKit

class DataTableViewController: UITableViewController/*, UITableViewDelegate, UITableViewDataSource*/  {
    
    @IBOutlet var dataTableView: UITableView!
    @IBOutlet var dataSegCon: UISegmentedControl!
    @IBOutlet var searchBut: UIButton!
    @IBOutlet var favoriteBut: UIButton!
    
    var dataItems: [String] = ["楊端和", "白起"]
    
    var selectedCell: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataTableView?.delegate = self
        dataTableView?.dataSource = self
        dataTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "DataCell")
        
        let dataxib = UINib(nibName: "DataItemsTableViewCell", bundle: nil)
        dataTableView.registerNib(dataxib, forCellReuseIdentifier: "DataCell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    //sectionの数を返す
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
        
    }

    //配列の総数を返す
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataItems.count
        
    }

    //cellに値を設定
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("DataCell", forIndexPath: indexPath) as! DataItemsTableViewCell

        //icView
        
        
        //nameLab
        cell.nameLab?.text = "\(dataItems[indexPath.row])"//nameLabに名前を挿入
        
        //levelLab
        cell.levelLab?.layer.masksToBounds = true
        cell.levelLab?.layer.cornerRadius = 3
        
        //hpLab
        cell.hpLab?.layer.masksToBounds = true
        cell.hpLab?.layer.cornerRadius = 3
        
        //fireLab
        cell.fireLab?.layer.masksToBounds = true
        cell.fireLab?.layer.cornerRadius = 3
        
        //intelLab
        cell.intelLab?.layer.masksToBounds = true
        cell.intelLab?.layer.cornerRadius = 3
        
        //defenceLab
        cell.defenceLab?.layer.masksToBounds = true
        cell.defenceLab?.layer.cornerRadius = 3

        cell.tag = indexPath.row
        
        return cell
        
    }
    
    //cellが選択された際に呼び出される
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        print("選択された武将名は→\(dataItems[indexPath.row])")
        
        selectedCell += ["\(dataItems[indexPath.row])"]
        //選択されたセルの武将のデータを配列から取り出して新しい配列に入れる
        
        print("配列に入れられた武将名は→\(selectedCell[0])")
        
        var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        appDelegate.DataItemsArray = selectedCell
        //武将のデータの入った配列をappDelegateのDataItemsArrayに渡す
        
        performSegueWithIdentifier("ToMonsterData", sender: nil)
        
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "ToMosterData"){
            
            let MonsterDataView : MonsterDataViewController = segue.destinationViewController as! MonsterDataViewController
            //storyboardでshowを選択
            
            //次のクラスに値を直接受け渡したいときはここに書く
        }
        
    }

}










