//
//  UIViewController+Extension.swift
//  GitHubBrowser
//
//  Created by Pavel Palancica  on 19.07.2025.
//

import UIKit

extension UIViewController {
    
    func presentCustomAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = CustomAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            
            self.present(alertVC, animated: true)
        }
    }
}
