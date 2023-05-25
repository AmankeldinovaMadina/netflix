//
//  MainTabBarViewController.swift
//  Netflix
//
//  Created by Madina Amankeldinova on 25.05.2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
            super.viewDidLoad()
        view.backgroundColor = .red
        
        let vcl1 = UINavigationController(rootViewController: HomeViewController())
        let vcl2 = UINavigationController(rootViewController: UpcomingViewController())
        let vcl3 = UINavigationController(rootViewController: SearchViewController())
        let vcl4 = UINavigationController(rootViewController: DownloadViewController())
        
        
        
        vcl1.tabBarItem.image = UIImage(systemName: "house")
        vcl2.tabBarItem.image = UIImage(systemName: "play.circle")
        vcl3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vcl4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        
        vcl1.title = "Home"
        vcl2.title = "Coming"
        vcl3.title = "Top Search"
        vcl4.title = "Downloads"
        
        
        tabBar.tintColor = .label
        
        setViewControllers([vcl1,vcl2,vcl3,vcl4], animated: true)
        
    }
}
