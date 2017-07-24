//
//  AppCell.swift
//  AppStore
//
//  Created by Kevin Chan on 7/2/17.
//  Copyright © 2017 Kevin Chan. All rights reserved.
//

import UIKit

class AppCell: UICollectionViewCell {
    
    var app: App! {
        didSet {
            if let imageName = app.imageName {
                appImageView.image = UIImage(named: imageName)
            }
            
            if let name = app.name {
                appNameLabel.text = name
            } else {
                appNameLabel.text = ""
            }
            
            if let categoryName = app.category {
                appCategoryLabel.text = categoryName
            } else {
                appCategoryLabel.text = ""
            }
            
            if let price = app.price {
                appPriceLabel.text = "$\(price)"
            } else {
                appPriceLabel.text = ""
            }
        }
    }
    
    var appImageView: UIImageView!
    var appNameLabel: UILabel!
    var appCategoryLabel: UILabel!
    var appPriceLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // each cell is 150px wide and 249px high
        
        backgroundColor = .white
        
        appImageView = UIImageView(frame: CGRect(x: 0, y: 20, width: frame.width, height: 130))
        appImageView.layer.cornerRadius = 20
        appImageView.layer.masksToBounds = true
        addSubview(appImageView)
        
        appNameLabel = UILabel(frame: CGRect(x: 0, y: appImageView.frame.origin.y + appImageView.frame.height, width: frame.width, height: 40))
        appNameLabel.textColor = .black
        appNameLabel.numberOfLines = 0
        appNameLabel.font = UIFont.systemFont(ofSize: 16)
        addSubview(appNameLabel)
        
        appCategoryLabel = UILabel(frame: CGRect(x: 0, y: appImageView.frame.origin.y + appImageView.frame.height + appNameLabel.frame.height, width: frame.width, height: 15))
        appCategoryLabel.textColor = UIColor.darkGray
        appCategoryLabel.font = UIFont.systemFont(ofSize: 16)
        addSubview(appCategoryLabel)
        
        appPriceLabel = UILabel(frame: CGRect(x: 0, y: appImageView.frame.origin.y + appImageView.frame.height + appNameLabel.frame.height + appCategoryLabel.frame.height, width: frame.width, height: 15))
        appPriceLabel?.textColor = .darkGray
        appPriceLabel?.font = UIFont.systemFont(ofSize: 16)
        addSubview(appPriceLabel!)
        
        
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
