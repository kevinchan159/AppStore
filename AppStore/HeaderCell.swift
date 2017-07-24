//
//  HeaderCell.swift
//  AppStore
//
//  Created by Kevin Chan on 7/3/17.
//  Copyright © 2017 Kevin Chan. All rights reserved.
//

import UIKit

class HeaderCell: CategoryCell {
    
    var mainNavigationController: UINavigationController!
    
    var imageNamesArray: [String] = [String]()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        for view in subviews {
            if view.isKind(of: UILabel.self) {
                view.removeFromSuperview()
            }
        }
        appCollectionView.frame = CGRect(x: 15, y: 5, width: frame.width-30, height: frame.height-6)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = appCollectionView.dequeueReusableCell(withReuseIdentifier: "bannerCellId", for: indexPath) as! BannerCell
        if imageNamesArray.count > 0 {
            cell.bannerImageName = imageNamesArray[indexPath.item]
            cell.bannerImageView.layer.cornerRadius = 0
        }
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 350, height: frame.height-6)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let layout = UICollectionViewFlowLayout()
        let appDetailsController = AppDetailsController(collectionViewLayout: layout)
        appDetailsController.appImageName = imageNamesArray[indexPath.item]
        mainNavigationController.pushViewController(appDetailsController, animated: true)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
}
