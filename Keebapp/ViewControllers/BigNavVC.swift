//
//  FeedNavVC.swift
//  Keebapp
//
//  Created by Kai on 11/08/2021.
//

import UIKit

class BigNavVC: UINavigationController {
    
    init(rootViewController: UIViewController, title: String) {
        super.init(rootViewController: rootViewController)
        rootViewController.navigationItem.title = title
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.prefersLargeTitles = true
    }

}
