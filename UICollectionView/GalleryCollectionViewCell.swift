//
//  GalleryCollectionViewCell.swift
//  UICollectionView
//
//  Created by Maxim Granchenko on 2/19/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "GalleryCollectionViewCell"
    
    let mainImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let nameLabel: UILabel = {
        let l = UILabel()
        l.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        l.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()

    let smallDeliveryLabel: UILabel = {
        let l = UILabel()
        l.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        l.numberOfLines = 0
        l.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    let likeImageView: UIImageView = {
        let i = UIImageView()
        i.image = UIImage(named: "like")
        i.translatesAutoresizingMaskIntoConstraints = false
        return i
    }()
    
    let costaLabel: UILabel = {
       let l = UILabel()
        l.font = UIFont.systemFont(ofSize: 24, weight: .light)
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(mainImageView)
        addSubview(nameLabel)
        addSubview(smallDeliveryLabel)
        addSubview(likeImageView)
        addSubview(costaLabel)
        
        backgroundColor = .white
        
        mainImageView.topAnchor.constraint(equalTo: topAnchor, constant: 40).isActive = true
        mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        mainImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3).isActive = true
        
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 12).isActive = true
        
        smallDeliveryLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        smallDeliveryLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8).isActive = true
        smallDeliveryLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2, constant: 10).isActive = true
        
        likeImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        likeImageView.topAnchor.constraint(equalTo: smallDeliveryLabel.bottomAnchor, constant: 20).isActive = true
        likeImageView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        likeImageView.heightAnchor.constraint(equalTo: likeImageView.widthAnchor).isActive = true
        
        costaLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        costaLabel.centerYAnchor.constraint(equalTo: likeImageView.centerYAnchor).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = 5
        layer.shadowRadius = 9
        layer.shadowOpacity = 0.3
        layer.shadowOffset = CGSize(width: 5, height: 8)
        clipsToBounds = false
        
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError() }
    
}
