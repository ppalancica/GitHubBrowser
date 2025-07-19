//
//  CustomButton.swift
//  GitHubBrowser
//
//  Created by Pavel Palancica  on 19.07.2025.
//

import UIKit

final class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 10
        setTitleColor(.white, for: .normal) // Unnecessary when using .white (because it is the default)
        titleLabel?.font = .preferredFont(forTextStyle: .headline)
    }
}
