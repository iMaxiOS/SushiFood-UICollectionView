//
//  MenuModel.swift
//  UICollectionView
//
//  Created by Maxim Granchenko on 3/3/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import Foundation
import UIKit

enum MenuModel: Int, CustomStringConvertible {

    case Menu
    case Profile
    case Camera
    case Setting
    
    var description: String {
        switch self {
        case .Menu: return "Home"
        case .Profile: return "Contacts"
        case .Camera: return "Camera"
        case .Setting: return "Setting"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Menu: return UIImage(named: "Home") ?? UIImage()
        case .Profile: return UIImage(named: "Contacts") ?? UIImage()
        case .Camera: return UIImage(named: "Camera") ?? UIImage()
        case .Setting: return UIImage(named: "Settings") ?? UIImage()
        }
    }
}
