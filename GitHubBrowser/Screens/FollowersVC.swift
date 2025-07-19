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
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
