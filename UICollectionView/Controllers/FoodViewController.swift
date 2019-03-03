//
//  ViewController.swift
//  UICollectionView
//
//  Created by Maxim Granchenko on 2/19/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import UIKit

protocol FoodViewControllerDelegaate {
    func toggleMenu()
}

class FoodViewController: UIViewController {
    
    @IBOutlet var delivery: UILabel!
    
    private let galleryCollectionView = GalleryCollectionView()
    var delegate: FoodViewControllerDelegaate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(galleryCollectionView)
        
        galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        galleryCollectionView.topAnchor.constraint(equalTo: delivery.bottomAnchor, constant: 10).isActive = true
        galleryCollectionView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        galleryCollectionView.set(cells: SushiModel.fetchSushi())
        
    }

    @IBAction func menuButton(_ sender: UIButton) {
        delegate?.toggleMenu()
    }
    
}

