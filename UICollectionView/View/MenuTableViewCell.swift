//
//  MenuTableViewCell.swift
//  UICollectionView
//
//  Created by Maxim Granchenko on 3/3/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    static var cellId = "MenuTableViewCell"
    
    let iconImageView: UIImageView = {
        let im = UIImageView()
        im.translatesAutoresizingMaskIntoConstraints = false
        im.contentMode = .scaleAspectFit
        im.clipsToBounds = true
        return im
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Custom"
        return label
    }()
    
    var menu: MenuModel! {
        didSet {
            iconImageView.image = menu.image
            nameLabel.text = menu.description
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(iconImageView)
        addSubview(nameLabel)
        
        backgroundColor = .clear
        
        iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        nameLabel.centerYAnchor.constraint(equalTo: iconImageView.centerYAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 12).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
