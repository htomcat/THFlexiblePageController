//
//  UpperTabViewController.swift
//  InfinitePageViewController
//
//  Created by htomcat on 2018/04/14.
//  Copyright © 2018年 htomcat. All rights reserved.
//

import UIKit

public class UpperTabViewController: UIViewController {

    // MARK: - Properties
    let defaultHeight: CGFloat = 60
    let defaultWidth: CGFloat = 100

    private lazy var collectionView: UICollectionView = self.initCollectionView()
    var dataSource: CustomDatasource? {
        didSet {
            collectionView.reloadData()
        }
    }
    var delegate: CustomDelegate?
    var config: Configuration?

    // MARK: - View Life Cycle
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(collectionView)
    }

    // MARK: - Methods
    /**
     * Initialize collection view
     */
    private func initCollectionView() -> UICollectionView {
        let layout = UICollectionViewFlowLayout()
        let size: CGSize
        if let customConfig = config {
            size = CGSize(width: customConfig.tabsWidth, height: customConfig.tabsHeight)
        } else {
            size = CGSize(width: defaultWidth, height: defaultHeight)
        }
        layout.itemSize = size
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: size.height), collectionViewLayout: layout)
        let podBundle = Bundle(for: RootViewController.self)
        let bundleURL = podBundle.url(forResource: "Resources", withExtension: "bundle")
        let bundle = Bundle(url: bundleURL!)
        collectionView.register(UINib(nibName: "TabBarCell", bundle: bundle), forCellWithReuseIdentifier: TabBarCell.identifier)
        dataSource?.config = config
        collectionView.dataSource = dataSource
        collectionView.delegate = delegate
        collectionView.backgroundColor = .white
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }

    /**
     * call when tab is selected by user
     */
    func selectTab(at index: Int) {
        dataSource?.selectedIndex = index
        collectionView.reloadData()
    }

    /**
     * centralize tab's postion
     */
    func centralize(at row: Int) {
        let indexPath = IndexPath(row: row, section: 0)
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
}
