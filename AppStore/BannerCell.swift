//
//  BannerCell.swift
//  AppStore
//
//  Created by Kevin Chan on 7/2/17.
//  Copyright © 2017 Kevin Chan. All rights reserved.
//

import UIKit

class BannerCell: UICollectionViewCell {
    
    var bannerImageName: String? {
        didSet {
            bannerImageView.image = UIImage(named: bannerImageName!)
        }
    }
    var bannerImageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        bannerImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height-10))
        bannerImageView.layer.cornerRadius = 16
        bannerImageView.layer.masksToBounds = true
        bannerImageView.contentMode = .scaleToFill
        addSubview(bannerImageView)
        
    }
    
    func setPlaceHolderImage() {
        bannerImageView.image = UIImage(named: "frozen")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
