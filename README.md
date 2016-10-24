# Swift3.0_tabBarController
Swift3.0导航控制器的使用

## 从AppDelegate中创建4个主页导航控制器

``` 
let attributes =  [NSForegroundColorAttributeName: UIColor.gray,NSFontAttributeName: UIFont(name: "Heiti SC", size: 10.0)!]
let attributesPressed =  [NSForegroundColorAttributeName: UIColor.darkGray,NSFontAttributeName: UIFont(name: "Heiti SC", size: 10.0)!]

        // 首页
let mHomeViewController = UIStoryboard(name: "HomePage", bundle: nil).instantiateViewController(withIdentifier: "HomePage") as! HomePageViewController
let mHomeNavController = UINavigationController(rootViewController: mHomeViewController)
let mHomeNormalImage = UIImage(named: "main_bottom_category_normal")?.withRenderingMode(.alwaysOriginal)
let mHomeSelectedImage = UIImage(named: "main_bottom_category_hover")?.withRenderingMode(.alwaysOriginal)
let mHomeTabBarItem = UITabBarItem(title: "精选", image: mHomeNormalImage, selectedImage: mHomeSelectedImage)
mHomeTabBarItem.setTitleTextAttributes(attributes, for: .normal)
mHomeTabBarItem.setTitleTextAttributes(attributesPressed, for: .focused)
mHomeNavController.tabBarItem = mHomeTabBarItem

// 分类页
let mCategoryViewController = UIStoryboard(name: "CategoryPage", bundle: nil).instantiateViewController(withIdentifier: "CategoryPage") as! CategoryPageViewController
let mCategoryNavController = UINavigationController(rootViewController: mCategoryViewController)
let mCategoryNormalImage = UIImage(named: "main_bottom_feedback_n")?.withRenderingMode(.alwaysOriginal)
let mCategorySelectedImage = UIImage(named: "main_bottom_feedback_p")?.withRenderingMode(.alwaysOriginal)
let mCategoryTabBarItem = UITabBarItem(title: "分类", image: mCategoryNormalImage, selectedImage: mCategorySelectedImage)
mCategoryTabBarItem.setTitleTextAttributes(attributes, for: .normal) mCategoryTabBarItem.setTitleTextAttributes(attributesPressed, for: .focused)
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
```
## 页面跳转


```
let mSearchPage = UIStoryboard(name: "SearchPage", bundle: nil).instantiateViewController(withIdentifier: "SearchPage") as! SearchPageController
self.navigationController?.pushViewController(mSearchPage, animated: true)
```
       
## 二级页面隐藏导航控制器

``` 
if (self.navigationController!.viewControllers.count > 1) { // 这里的 navigationController count 指当前APP 页面控制器出现的数量
            self.tabBarController?.tabBar.isHidden = true //隐藏tabbar
            self.automaticallyAdjustsScrollViewInsets = false //移除隐藏后留下的空白

        }else {
            self.tabBarController?.tabBar.isHidden = false // 显示tabbar
            self.automaticallyAdjustsScrollViewInsets = true

        }
```


