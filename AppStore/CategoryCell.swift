//
//  CategoryCell.swift
//  AppStore
//
//  Created by Kevin Chan on 7/2/17.
//  Copyright © 2017 Kevin Chan. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var mainNavController: UINavigationController!
    
    var categoryNameLabel: UILabel!
    var appCollectionView: UICollectionView!
    var mainIndexPathItem: Int?
    var dividerLine: UIView!
    var apps: [App]?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        backgroundColor = .white
        
        categoryNameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: frame.width, height: 25))
        categoryNameLabel.textColor = .black
        categoryNameLabel.font = UIFont.systemFont(ofSize: 20)
        addSubview(categoryNameLabel)
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionViewScrollDirection.horizontal
        appCollectionView = UICollectionView(frame: CGRect(x: 15, y: categoryNameLabel.frame.height, width: frame.width-30, height: frame.height-categoryNameLabel.frame.height-1), collectionViewLayout: layout)
        appCollectionView.dataSource = self
        appCollectionView.delegate = self
        appCollectionView.register(AppCell.self, forCellWithReuseIdentifier: "appCellId")
        appCollectionView.register(BannerCell.self, forCellWithReuseIdentifier: "bannerCellId")
        appCollectionView.backgroundColor = .white
        addSubview(appCollectionView)
        
        dividerLine = UIView(frame: CGRect(x: 15, y: frame.height-1, width: frame.width-30, height: 0.5))
        dividerLine.backgroundColor = UIColor.lightGray
        addSubview(dividerLine)

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if (mainIndexPathItem == 2) {
            // 50% off for Limited Time Section
            return CGSize(width: 350, height: appCollectionView.frame.height)
        } else {
            return CGSize(width: 130, height: appCollectionView.frame.height)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (mainIndexPathItem == 2) {
            let cell = appCollectionView.dequeueReusableCell(withReuseIdentifier: "bannerCellId", for: indexPath) as! BannerCell
            if let appsArray = apps {
                cell.bannerImageName = appsArray[indexPath.item].imageName
            }
            return cell
        }
        
        let cell = appCollectionView.dequeueReusableCell(withReuseIdentifier: "appCellId", for: indexPath) as! AppCell
        if let appsArray = apps {
            cell.app = appsArray[indexPath.item]
        }
        return cell
        
            
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let appsArray = apps {
            return appsArray.count
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let layout = UICollectionViewFlowLayout()
        let appDetailsController = AppDetailsController(collectionViewLayout: layout)
        appDetailsController.appName = apps?[indexPath.item].name
        appDetailsController.appImageName = apps?[indexPath.item].imageName
        appDetailsController.appPrice = apps?[indexPath.item].price
        appDetailsController.appCategoryName = apps?[indexPath.item].category
        mainNavController.pushViewController(appDetailsController, animated: true)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
