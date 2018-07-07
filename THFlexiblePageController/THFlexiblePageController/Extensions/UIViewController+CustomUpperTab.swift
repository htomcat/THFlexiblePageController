//
//  UIViewController+CustomUpperTab.swift
//  THFlexiblePageController
//
//  Created by 浜田　智史 on 2018/07/05.
//  Copyright © 2018年 htomcat. All rights reserved.
//

import Foundation

extension UIViewController: PropertyStoring {    
    public typealias T = UIColor

    private struct CustomProperties {
        static var upperTabsColor = UIColor.white
    }
    public var upperTabsColor: UIColor {
        get {
            return getAssociatedObject(&CustomProperties.upperTabsColor, defaultValue: CustomProperties.upperTabsColor)
        }
        set {
            return objc_setAssociatedObject(self, &CustomProperties.upperTabsColor, newValue, .OBJC_ASSOCIATION_RETAIN)
        }
    }
}
