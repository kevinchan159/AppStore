//
//  MainViewController.swift
//  AppStore
//
//  Created by Kevin Chan on 7/2/17.
//  Copyright © 2017 Kevin Chan. All rights reserved.
//

import UIKit


class MainViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var categories: [Category] = [Category]()
    var headerImageNamesArray: [String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Featured"
        
        Category.fetchCategories { (categoriesArray, bannerImageNamesArray) in
            self.categories = categoriesArray
            self.headerImageNamesArray = bannerImageNamesArray
            self.collectionView?.reloadData()
        }
        
        collectionView?.backgroundColor = .white
        collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: "categoryCellId")
        collectionView?.register(HeaderCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "headerCellId")
        collectionView?.register(BannerCell.self, forCellWithReuseIdentifier: "bannerCellId")
        collectionView?.showsHorizontalScrollIndicator = true

        // Do any additional setup after loading the view.
    }
    
    
    // provide view for header
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerCellId", for: indexPath) as! HeaderCell
        header.imageNamesArray = headerImageNamesArray
        header.mainNavigationController = navigationController
        header.appCollectionView.reloadData()
        return header
    }
    
    
    // provide size of header
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.item == 2 {
            return CGSize(width: view.frame.width, height: 200)
        } else {
            return CGSize(width: view.frame.width, height: 275)
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCellId", for: indexPath) as! CategoryCell
        cell.mainNavController = navigationController
        if let name = categories[indexPath.item].name {
            cell.categoryNameLabel.text = "  \(name)"
        }
        cell.apps = categories[indexPath.item].apps
        cell.mainIndexPathItem = indexPath.item
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    
  

}
