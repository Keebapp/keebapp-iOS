//
//  TabBarController.swift
//  Keebapp
//
//  Created by Kai on 08/08/2021.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabs()
    }
    
    func setupTabs() {
        let feedVC = BigNavVC(rootViewController: FeedVC(), title: "Feed")
        feedVC.title = "Feed"
        let postsVC = BigNavVC(rootViewController: PostsVC(), title: "Posts")
        postsVC.title = "Posts"
        let exploreVC = BigNavVC(rootViewController: ExploreVC(), title: "Explore")
        exploreVC.title = "Explore"
        let guidesVC = BigNavVC(rootViewController: GuidesVC(), title: "Guides")
        guidesVC.title = "Guides"
        let youVC = BigNavVC(rootViewController: YouVC(), title: "You")
        youVC.title = "You"
        
        self.setViewControllers([feedVC, postsVC, exploreVC, guidesVC, youVC], animated: true)
        
        guard let items = self.tabBar.items else { return }
        
        var images = ["sparkles", "doc.plaintext.fill", "keyboard", "book.fill", "person.circle.fill"]
        
        if #available(iOS 15, *) {
            images[1] = "doc.text.image.fill"
            images[2] = "keyboard.fill"
        }
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
