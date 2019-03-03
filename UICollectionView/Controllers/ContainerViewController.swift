//
//  ContainerViewController.swift
//  UICollectionView
//
//  Created by Maxim Granchenko on 3/3/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController, FoodViewControllerDelegaate {

    var controller: UIViewController!
    var menuViewController: UIViewController!
    var isMove = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(white: 0.6, alpha: 1.0)
        configureFoodViewController()
        
    }
    
    func configureFoodViewController() {
        let foodViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! FoodViewController
        controller = foodViewController
        foodViewController.delegate = self
        view.addSubview(controller.view)
        addChild(controller)
    }
    
    func configureMenuViewController() {
        if menuViewController == nil {
            menuViewController = MenuViewController()
            view.insertSubview(menuViewController.view, at: 0)
            addChild(menuViewController)
            print("ToggleMenu")
        }
    }
    
    func showMenuViewController(showedMenu: Bool) {
        if showedMenu {
            // showMenu
            UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.controller.view.frame.origin.x = self.controller.view.frame.width - 140
            }) { (finished) in
                
            }
        } else {
            // hideMenu
            UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.controller.view.frame.origin.x = 0
            }) { (finished) in
                
            }
        }
    }
    
    func toggleMenu() {
        configureMenuViewController()
        
        isMove = !isMove
        showMenuViewController(showedMenu: isMove)
    }
}
