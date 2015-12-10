//
//  DataViewController.swift
//  DataBaseofKingdom
//
//  Created by kento on 2015/12/10.
//  Copyright © 2015年 Kento Ohara. All rights reserved.
//

import UIKit

class DataViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var dataTableView: UITableView!
    @IBOutlet var dataSegCon: UISegmentedControl!
    @IBOutlet var searchBut: UIButton!
    @IBOutlet var favoriteBut: UIButton!
    
    var dataItems: [String] = ["楊端和", "白起"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataTableView.delegate = self
        dataTableView.dataSource = self
        dataTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "DataCell")
        
        let dataxib = UINib(nibName: "DataItemsTableViewCell", bundle: nil)
        dataTableView.registerNib(dataxib, forCellReuseIdentifier: "DataCell")
        

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
    
    /*
    Cellが選択された際に呼び出される.
    */
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
    //
        
    }
    
    /*
    テーブルに表示する配列の総数を返す.
    */
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataItems.count
        
    }
    

}
