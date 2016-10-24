//
//  HomePageViewController.swift
//  Swift3.0_tabBarController
//
//  Created by DavikChen on 2016/10/21.
//  Copyright © 2016年 davikchen. All rights reserved.
//

import Foundation
import  UIKit
class HomePageViewController: UIViewController {
    
    override func viewDidLoad() {
        self.title = "首页"
        // 搜索按钮
        let mSearchButtonRight = UIBarButtonItem(title: "搜索", style: .plain, target: self, action: #selector(HomePageViewController.goSearchPage))
        self.navigationItem.rightBarButtonItem = mSearchButtonRight
        // 消息按钮
        let mMsgButtonLeft = UIBarButtonItem(title: "消息", style: .plain, target: self, action: #selector(HomePageViewController.goSearchPage))
        self.navigationItem.leftBarButtonItem = mMsgButtonLeft
        
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
    
    func goSearchPage() {
        
        let mSearchPage = UIStoryboard(name: "SearchPage", bundle: nil).instantiateViewController(withIdentifier: "SearchPage") as! SearchPageController
         self.tabBarController?.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(mSearchPage, animated: true)
       
        
        
    }
}
