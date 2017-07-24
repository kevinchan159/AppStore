//
//  ScreenshotCell.swift
//  AppStore
//
//  Created by Kevin Chan on 7/11/17.
//  Copyright © 2017 Kevin Chan. All rights reserved.
//

import UIKit

class ScreenshotCell: UICollectionViewCell {
    
    var screenshotImageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        screenshotImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height - 5))
        addSubview(screenshotImageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
