//
//  HomePageViewController.swift
//  Swift3.0_tabBarController
//
//  Created by DavikChen on 2016/10/21.
//  Copyright © 2016年 davikchen. All rights reserved.
//

import Foundation
import  UIKit
class HomePageViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var mTableList: UITableView!
    var items: [String] = ["We", "Heart", "Swift"]
    
    override func viewDidLoad() {
        self.title = "首页"
        // 搜索按钮
        let mSearchButtonRight = UIBarButtonItem(title: "搜索", style: .plain, target: self, action: #selector(HomePageViewController.goSearchPage))
        self.navigationItem.rightBarButtonItem = mSearchButtonRight
        // 消息按钮
        let mMsgButtonLeft = UIBarButtonItem(title: "消息", style: .plain, target: self, action: #selector(HomePageViewController.goSearchPage))
        self.navigationItem.leftBarButtonItem = mMsgButtonLeft
        
        mTableList.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        mTableList.dataSource = self
        mTableList.delegate = self;
        // 去掉多余的分割线
        mTableList.tableFooterView = UIView()
        // 去掉tabview 的分析左右间距
        mTableList.separatorInset = UIEdgeInsets.zero
        mTableList.layoutMargins = UIEdgeInsets.zero
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(self.navigationController!.viewControllers.count)
        if (self.navigationController!.viewControllers.count > 1) { // 这里的 navigationController count 指当前APP 页面控制器出现的数量
            self.tabBarController?.tabBar.isHidden = true //隐藏tabbar
            self.automaticallyAdjustsScrollViewInsets = false //移除隐藏后留下的空白

        }else {
            self.tabBarController?.tabBar.isHidden = false // 显示tabbar
            self.automaticallyAdjustsScrollViewInsets = true

        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.items.count;
    }
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = mTableList.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        
//        mTableList.separatorInset = UIEdgeInsets.zero
//        mTableList.layoutMargins = UIEdgeInsets.zero

        return cell
    }
   
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        mTableList?.deselectRow(at: indexPath, animated: true)
        print("点击了item=\(indexPath.row)")
      
    }
    
    func goSearchPage() {
        
        let mSearchPage = UIStoryboard(name: "SearchPage", bundle: nil).instantiateViewController(withIdentifier: "SearchPage") as! SearchPageController
         self.tabBarController?.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(mSearchPage, animated: true)
       
        
        
    }
}
