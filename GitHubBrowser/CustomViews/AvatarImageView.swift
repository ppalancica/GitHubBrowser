//
//  AvatarImageView.swift
//  GitHubBrowser
//
//  Created by Pavel Palancica  on 20.07.2025.
//

import UIKit

final class AvatarImageView: UIImageView {
    
    private let placeholderImage = UIImage(named: "avatar-placeholder")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
}
