//
//  ViewController.swift
//  FootBallRefreshView
//
//  Created by 武飞跃 on 2016/8/1.
//  Copyright © 2016年 RG. All rights reserved.
//

import UIKit
import MJRefresh

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    var tableView:UITableView!
    var circle:FootBallCircleView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView = UITableView(frame: view.bounds, style: .Plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.contentInset = UIEdgeInsetsMake(20, 0, 0, 0)
        view.addSubview(tableView)
        tableView.mj_header = FootBallViewHeader(refreshingTarget:self, refreshingAction:#selector(self.refreshingAction))
        
        
        let tool = UIToolbar(frame:CGRect(x: 0, y: 0, width: CGRectGetWidth(self.view.frame), height:20))
        view.addSubview(tool)
        
    }

    func refreshingAction(){
        print("刷新")
        
        NSTimer.schedule(delay: 3.0) { (timer) in
            self.tableView.mj_header.endRefreshing()
        }
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("tableViewCellIentifier")
        
        if cell == nil {
            cell = UITableViewCell.init(style: .Default, reuseIdentifier: "tableViewCellIentifier")
        }
        
        let str = indexPath.row
        
        cell!.textLabel?.text = "这里是\(str)个cell"
        
        return cell!
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

