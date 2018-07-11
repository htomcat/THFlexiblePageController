//
//  RootViewController.swift
//  InfinitePageViewController
//
//  Created by htomcat on 2018/04/18.
//  Copyright © 2018年 htomcat. All rights reserved.
//

import UIKit

public class RootViewController: UIViewController {

    @IBOutlet weak var tabsHeight: NSLayoutConstraint!
    var dataSource: CustomDatasource?
    let delegate = CustomDelegate()
    var config: Configuration?

    public static func makeInstance() -> RootViewController {
        let podBundle = Bundle(for: RootViewController.self)
        let bundleURL = podBundle.url(forResource: "Resources", withExtension: "bundle")
        let bundle = Bundle(url: bundleURL!)
        let vc = UIStoryboard(name: "Main", bundle: bundle).instantiateViewController(withIdentifier: "RootViewController") as! RootViewController
        return vc
    }

    public func setPages(_ viewControllers: [UIViewController], config: Configuration? = nil) {
        let repository = PagesRepository(pages: viewControllers)
        dataSource = CustomDatasource(repository: repository)
        dataSource?.config = config
        self.config = config
    }

    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateConstraint()
    }
    private func updateConstraint() {
        guard let config = config else { return }
        tabsHeight.constant = CGFloat(config.tabsHeight)
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.destination {
        case let vc as UpperTabViewController:
            delegate.upperTab = vc
            vc.config = config
            vc.delegate = delegate
            vc.dataSource = dataSource
        case let vc as PageViewController:
            vc.dataSource = dataSource
            delegate.pageController = vc
            vc.delegate = delegate
        default:
            break
        }
    }

}
