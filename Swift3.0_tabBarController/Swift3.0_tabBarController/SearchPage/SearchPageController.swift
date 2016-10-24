//
//  SearchPageController.swift
//  Swift3.0_tabBarController
//
//  Created by DavikChen on 2016/10/24.
//  Copyright © 2016年 davikchen. All rights reserved.
//

import Foundation
import  UIKit

class SearchPageController: UIViewController {
    
    override func viewDidLoad() {
        
        self.title = "搜索"
        let mBackButton = UIBarButtonItem(title: "返回", style: .plain, target: self, action: #selector(SearchPageController.goBackPage))
        self.navigationItem.leftBarButtonItem = mBackButton
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if (self.navigationController!.viewControllers.count > 1) { // 这里的 navigationController count 指当前APP 页面控制器出现的数量
            self.tabBarController?.tabBar.isHidden = true //隐藏tabbar
            self.automaticallyAdjustsScrollViewInsets = false //移除隐藏后留下的空白
   
        }else {
            self.tabBarController?.tabBar.isHidden = false // 显示tabbar
            self.automaticallyAdjustsScrollViewInsets = true
        }
    }
    
    // 返回上个页面
    func goBackPage()  {
        self.navigationController!.popViewController(animated: true)
    }
    
}
