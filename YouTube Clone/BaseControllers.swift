//
//  BaseControllers.swift
//  YouTube Clone
//
//  Created by Zackary O'Connor on 3/23/20.
//  Copyright © 2020 Zackary O'Connor. All rights reserved.
//

import UIKit

public func baseNavController(viewController: UIViewController, title: String, searchControllerText: String) -> UIViewController {
    let navigationController = UINavigationController(rootViewController: viewController)
    let searchController = UISearchController(searchResultsController: nil)
    
//    navigationController.navigationBar.prefersLargeTitles = true
    
    searchController.searchBar.placeholder = searchControllerText
    searchController.obscuresBackgroundDuringPresentation = false
    searchController.definesPresentationContext = true
    
//    viewController.navigationItem.searchController = searchController
//    viewController.navigationItem.title = title
//    viewController.view.backgroundColor = .systemBackground
        
    return navigationController
}




class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let subscriptionsController = baseNavController(viewController: SubscriptionsController(), title: "YouTube", searchControllerText: "Search YouTube")
        subscriptionsController.tabBarItem.title = "Subscriptions"
        
        viewControllers = [subscriptionsController]
        
        tabBar.tintColor = .label
    }
}
