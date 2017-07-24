//
//  TabBarController.swift
//  AppStore
//
//  Created by Kevin Chan on 7/10/17.
//  Copyright © 2017 Kevin Chan. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        let mainViewController = MainViewController(collectionViewLayout: layout)
        let mainNavController = UINavigationController(rootViewController: mainViewController)
        mainNavController.tabBarItem.title = "Featured"
        mainNavController.tabBarItem.image = #imageLiteral(resourceName: "star-7")
        
        let placeHolder1Controller = UIViewController()
        placeHolder1Controller.view.backgroundColor = .white
        placeHolder1Controller.tabBarItem.title = "Categories"
        placeHolder1Controller.tabBarItem.image = #imageLiteral(resourceName: "album-simple-7")
        
        let placeHolder2Controller = UIViewController()
        placeHolder2Controller.view.backgroundColor = .white
        placeHolder2Controller.tabBarItem.title = "Top Charts"
        placeHolder2Controller.tabBarItem.image = #imageLiteral(resourceName: "list-simple-star-7")
        
        let placeHolder3Controller = UIViewController()
        placeHolder3Controller.view.backgroundColor = .white
        placeHolder3Controller.tabBarItem.title = "Search"
        placeHolder3Controller.tabBarItem.image = #imageLiteral(resourceName: "search-7")
        
        let placeHolder4Controller = UIViewController()
        placeHolder4Controller.view.backgroundColor = .white
        placeHolder4Controller.tabBarItem.title = "Updates"
        placeHolder4Controller.tabBarItem.image = #imageLiteral(resourceName: "box-incoming-7")

        viewControllers = [mainNavController, placeHolder1Controller, placeHolder2Controller,
                           placeHolder3Controller, placeHolder4Controller]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
