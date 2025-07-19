//
//  FollowersVC.swift
//  GitHubBrowser
//
//  Created by Pavel Palancica  on 19.07.2025.
//

import UIKit

final class FollowersVC: UIViewController {
    
    var username: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        guard let username else {
            fatalError("'username' was not injected into FollowersVC")
        }
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { followers, errorMessage in
            guard let followers else {
                self.presentCustomAlertOnMainThread(title: "Something Went Wrong",
                                                    message: errorMessage ?? "Try again",
                                                    buttonTitle: "OK")
                return
            }
            
            print("followers.count = ", followers.count)
            print(followers)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
