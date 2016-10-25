//
//  AppDelegate.swift
//  Swift3.0_tabBarController
//
//  Created by DavikChen on 2016/10/21.
//  Copyright © 2016年 davikchen. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // 导航按钮文字颜色 字体大小
        let attributes =  [NSForegroundColorAttributeName: UIColor.gray,NSFontAttributeName: UIFont(name: "Heiti SC", size: 10.0)!]
        let attributesPressed =  [NSForegroundColorAttributeName: UIColor.darkGray,NSFontAttributeName: UIFont(name: "Heiti SC", size: 10.0)!]

        // 首页
        // 第一步 获取ViewController 控制器，并且创建一个 导航控制器用来承载ViewController
        let mHomeViewController = UIStoryboard(name: "HomePage", bundle: nil).instantiateViewController(withIdentifier: "HomePage") as! HomePageViewController
        let mHomeNavController = UINavigationController(rootViewController: mHomeViewController)
        // 第二步 创建一个导航item 并且设置导航按钮的点击icon切换 设置字体颜色 和大小
        let mHomeNormalImage = UIImage(named: "main_bottom_category_normal")?.withRenderingMode(.alwaysOriginal)
        let mHomeSelectedImage = UIImage(named: "main_bottom_category_hover")?.withRenderingMode(.alwaysOriginal)
        let mHomeTabBarItem = UITabBarItem(title: "精选", image: mHomeNormalImage, selectedImage: mHomeSelectedImage)
        mHomeTabBarItem.setTitleTextAttributes(attributes, for: .normal)
        mHomeTabBarItem.setTitleTextAttributes(attributesPressed, for: .focused)
        // 第三步:将导航item 对象 赋值给导航控制器
        mHomeNavController.tabBarItem = mHomeTabBarItem
        
        
      
        // 分类页
        let mCategoryViewController = UIStoryboard(name: "CategoryPage", bundle: nil).instantiateViewController(withIdentifier: "CategoryPage") as! CategoryPageViewController
        let mCategoryNavController = UINavigationController(rootViewController: mCategoryViewController)
        let mCategoryNormalImage = UIImage(named: "main_bottom_feedback_n")?.withRenderingMode(.alwaysOriginal)
        let mCategorySelectedImage = UIImage(named: "main_bottom_feedback_p")?.withRenderingMode(.alwaysOriginal)
        let mCategoryTabBarItem = UITabBarItem(title: "分类", image: mCategoryNormalImage, selectedImage: mCategorySelectedImage)
        mCategoryTabBarItem.setTitleTextAttributes(attributes, for: .normal)
        mCategoryTabBarItem.setTitleTextAttributes(attributesPressed, for: .focused)
        mCategoryNavController.tabBarItem = mCategoryTabBarItem
        
        // 购物车页面
        let mShopCarViewController = UIStoryboard(name: "ShopCar", bundle: nil).instantiateViewController(withIdentifier: "ShopCar") as! ShopCarViewController
        let mShopCarNavController = UINavigationController(rootViewController: mShopCarViewController)
        let mShopCarNormalImage = UIImage(named: "main_bottom_recommand_n")?.withRenderingMode(.alwaysOriginal)
        let mShopCarSelectedImage = UIImage(named: "main_bottom_recommand_p")?.withRenderingMode(.alwaysOriginal)
        let mShopCarTabBar = UITabBarItem(title: "购物车", image: mShopCarNormalImage, selectedImage: mShopCarSelectedImage)
        mShopCarTabBar.setTitleTextAttributes(attributes, for: .normal)
        mShopCarTabBar.setTitleTextAttributes(attributesPressed, for: .focused)
        mShopCarNavController.tabBarItem = mShopCarTabBar
      
        // 用户主页
        let mUserMineViewController = UIStoryboard(name: "UserMine", bundle: nil).instantiateViewController(withIdentifier: "UserMine") as! UserMineViewController
        let mUserMineNavController = UINavigationController(rootViewController: mUserMineViewController)
        let mUserMineNormalImage = UIImage(named: "main_bottom_mine_n")?.withRenderingMode(.alwaysOriginal)
        let mUserMineSelectedImage = UIImage(named: "main_bottom_mine_p")?.withRenderingMode(.alwaysOriginal)
        let mUserMineTabBar = UITabBarItem(title: "我的", image: mUserMineNormalImage, selectedImage: mUserMineSelectedImage)
        mUserMineTabBar.setTitleTextAttributes(attributes, for: .normal)
        mUserMineTabBar.setTitleTextAttributes(attributesPressed, for: .focused)
        mUserMineNavController.tabBarItem = mUserMineTabBar
        
        
        // 导航控制器
        let mTabArray = [mHomeNavController,mCategoryNavController,mShopCarNavController,mUserMineNavController]
        let mTabBarController = UITabBarController()
        mTabBarController.viewControllers = mTabArray
        
        self.window!.rootViewController = mTabBarController
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

