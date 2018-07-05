//
//  PropertyStoring.swift
//  THFlexiblePageController
//
//  Created by 浜田　智史 on 2018/07/05.
//  Copyright © 2018年 htomcat. All rights reserved.
//

protocol PropertyStoring {
    
    associatedtype T
    
    func getAssociatedObject(_ key: UnsafeRawPointer!, defaultValue: T) -> T
}

extension PropertyStoring {
    func getAssociatedObject(_ key: UnsafeRawPointer!, defaultValue: T) -> T {
        guard let value = objc_getAssociatedObject(self, key) as? T else {
            return defaultValue
        }
        return value
    }
}
