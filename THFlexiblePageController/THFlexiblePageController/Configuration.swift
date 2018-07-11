//
//  Configuration.swift
//  THFlexiblePageController
//
//  Created by 浜田　智史 on 2018/06/29.
//  Copyright © 2018年 htomcat. All rights reserved.
//

public struct Configuration {
    let tabsHeight: Int
    let tabsWidth: Int
    let selectedLineColor: UIColor?
    let backgroundColor: UIColor?
    let hiddenSeparatedLine: Bool
    let spacing: CGFloat

    public init(tabsHeight: Int, tabsWidth: Int, selectedLineColor: UIColor, backgroundColor: UIColor, hiddenSeparatedLine: Bool, spacing: CGFloat) {
        self.tabsHeight = tabsHeight
        self.tabsWidth = tabsWidth
        self.selectedLineColor = selectedLineColor
        self.backgroundColor = backgroundColor
        self.hiddenSeparatedLine = hiddenSeparatedLine
        self.spacing = spacing
    }

}
