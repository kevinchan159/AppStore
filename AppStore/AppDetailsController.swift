//
//  AppDetailsController.swift
//  AppStore
//
//  Created by Kevin Chan on 7/10/17.
//  Copyright © 2017 Kevin Chan. All rights reserved.
//

import UIKit

class AppDetailsController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var appName: String?
    var appCategoryName: String?
    var appImageName: String?
    var appPrice: Float?
    
    override func viewDidLoad() {
        
        self.title = appName
        
        let layout = collectionView?.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionHeadersPinToVisibleBounds = true
        
        
        collectionView?.backgroundColor = .white
        collectionView?.register(DetailHeaderCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "detailHeaderCellId")
        collectionView?.register(AppScreenshotsCell.self, forCellWithReuseIdentifier: "appScreenshotsCellId")
        collectionView?.register(AppDescriptionCell.self, forCellWithReuseIdentifier: "appDescriptionCellId")
        collectionView?.register(DetailInformationCell.self, forCellWithReuseIdentifier: "detailInformationCellId")
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "detailHeaderCellId", for: indexPath) as! DetailHeaderCell
        header.appLabel.text = appName
        if let category = appCategoryName {
            header.categoryLabel.text = category
        } else {
            header.categoryLabel.text = "App"
        }
        header.appImageView.image = UIImage(named: appImageName!)
        if let price = appPrice {
            header.appPriceButton.setTitle("$\(price)", for: .normal)
        } else {
            header.appPriceButton.setTitle("Free", for: .normal)
        }
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 175)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (indexPath.item == 0) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "appScreenshotsCellId", for: indexPath) as! AppScreenshotsCell
            return cell
        } else if (indexPath.item == 1) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "appDescriptionCellId", for: indexPath) as! AppDescriptionCell
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "detailInformationCellId", for: indexPath) as! DetailInformationCell
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if (indexPath.item == 0) {
            return CGSize(width: view.frame.width, height: 200)
        } else if (indexPath.item == 1) {
            return CGSize(width: view.frame.width, height: 100)
        } else {
            return CGSize(width: view.frame.width, height: 200)
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        navigationController?.popViewController(animated: true)
    }
    
}
