//
//  NavigationViewController.swift
//  BBVA
//
//  Created by Nhan Nguyen on 8/20/18.
//  Copyright © 2018 Nhan Nguyen. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.tintColor = .white
        navigationBar.barTintColor = UIColor(red:0.00, green:0.28, blue:1.00, alpha:1.0)
        navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    }
}
