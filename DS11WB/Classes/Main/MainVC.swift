//
//  MainVC.swift
//  DS11WB
//
//  Created by fanqie on 10/21/22.
//

import UIKit

class MainVC: UITabBarController {

    // ,"plus.app"  ,"plus.app.fill"
    var images = ["house", "envelope","magnifyingglass","person.crop.circle"]
    var selImages = ["house.fill", "envelope.fill","magnifyingglass.circle.fill","person.crop.circle.fill"]
    var vcs = [HomeVC(), MessagesVC(), DiscoveryVC(), ProfileVC()]
    var titles = ["首页", "消息", "发现", "我"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0..<vcs.count{
            addChild(childVC: vcs[i], title: titles[i], imageName: images[i], selectImage: selImages[i])
        }

    }
    
    // swift支持方法重载
    // 方法重载：方法名称相同，但是参数不同。 --> 1. 参数的类型不同 2. 参数的个数不同
    // private 当前文件可以访问，其他文件不能访问
    private func addChild(childVC: UIViewController, title: String, imageName: String, selectImage: String) {
        // 1.创建自控制器
//        let childVC = HomeVC()

        // 2.设置子控制器属性
        childVC.title = title
        childVC.tabBarItem.image = UIImage(systemName: imageName)
        childVC.tabBarItem.selectedImage = UIImage(systemName: selectImage)
        
        // 3.包装导航栏控制器
        let childNav = UINavigationController(rootViewController: childVC)
        
        // 4.添加控制器
        addChild(childNav)
    }
}


