//
//  AppScreenshotsCell.swift
//  AppStore
//
//  Created by Kevin Chan on 7/11/17.
//  Copyright © 2017 Kevin Chan. All rights reserved.
//

import UIKit

class AppScreenshotsCell: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var photoCollectionView: UICollectionView!
    var screenshotImageArray: [UIImage] = [#imageLiteral(resourceName: "frozen_screenshot_1"), #imageLiteral(resourceName: "frozen_screenshot_2"), #imageLiteral(resourceName: "frozen_screenshot_3"),
                                           #imageLiteral(resourceName: "frozen_screenshot_4"), #imageLiteral(resourceName: "frozen_screenshot_5")]
    var dividerLine: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        photoCollectionView = UICollectionView(frame: CGRect(x:15 ,y: 15, width: frame.width-30, height: frame.height-30), collectionViewLayout: layout)
        photoCollectionView.delegate = self
        photoCollectionView.dataSource = self
        photoCollectionView.register(ScreenshotCell.self, forCellWithReuseIdentifier: "screenshotCellId")
        photoCollectionView.backgroundColor = .white
        addSubview(photoCollectionView)
        
        dividerLine = UIView(frame: CGRect(x: 15, y: frame.height-1, width: frame.width-30, height: 0.5))
        dividerLine.backgroundColor = UIColor.lightGray
        addSubview(dividerLine)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width*0.8, height: frame.height-30)
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = photoCollectionView.dequeueReusableCell(withReuseIdentifier: "screenshotCellId", for: indexPath) as! ScreenshotCell
        cell.screenshotImageView.image = screenshotImageArray[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return screenshotImageArray.count
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
