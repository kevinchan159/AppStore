//
//  DetailInformationCell.swift
//  AppStore
//
//  Created by Kevin Chan on 7/11/17.
//  Copyright © 2017 Kevin Chan. All rights reserved.
//

import UIKit

class DetailInformationCell: UICollectionViewCell {
    
    var informationLabel: UILabel!
    var sellerLabel: UILabel!
    var sellerTextLabel: UILabel!
    var categoryLabel: UILabel!
    var categoryTextLabel: UILabel!
    var updatedLabel: UILabel!
    var updatedTextLabel: UILabel!
    var versionLabel: UILabel!
    var versionTextLabel: UILabel!
    var sizeLabel: UILabel!
    var sizeTextLabel: UILabel!
    var ratingLabel: UILabel!
    var ratingTextLabel: UILabel!
    var familyLabel: UILabel!
    var familyTextLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        informationLabel = UILabel(frame: CGRect(x: 15, y: 0, width: frame.width-30, height: 25))
        informationLabel.text = "Information"
        informationLabel.textColor = .black
        addSubview(informationLabel)
        
        sellerLabel = UILabel(frame: CGRect(x: 15, y: informationLabel.frame.origin.y + informationLabel.frame.height + 10, width: frame.width*0.23, height: 15))
        sellerLabel.text = "Seller"
        sellerLabel.textColor = .gray
        sellerLabel.textAlignment = .right
        addSubview(sellerLabel)
        
        categoryLabel = UILabel(frame: CGRect(x: 15, y: sellerLabel.frame.origin.y + sellerLabel.frame.height + 5, width: frame.width*0.23, height: 15))
        categoryLabel.text = "Category"
        categoryLabel.textColor = .gray
        categoryLabel.textAlignment = .right
        addSubview(categoryLabel)
        
        updatedLabel = UILabel(frame: CGRect(x: 15, y: categoryLabel.frame.origin.y + categoryLabel.frame.height + 5, width: frame.width*0.23, height: 15))
        updatedLabel.text = "Updated"
        updatedLabel.textColor = .gray
        updatedLabel.textAlignment = .right
        addSubview(updatedLabel)
        
        versionLabel = UILabel(frame: CGRect(x: 15, y: updatedLabel.frame.origin.y + updatedLabel.frame.height + 5, width: frame.width*0.23, height: 15))
        versionLabel.text = "Version"
        versionLabel.textColor = .gray
        versionLabel.textAlignment = .right
        addSubview(versionLabel)
        
        sizeLabel = UILabel(frame: CGRect(x: 15, y: versionLabel.frame.origin.y + versionLabel.frame.height + 5, width: frame.width*0.23, height: 15))
        sizeLabel.text = "Size"
        sizeLabel.textColor = .gray
        sizeLabel.textAlignment = .right
        addSubview(sizeLabel)
        
        ratingLabel = UILabel(frame: CGRect(x: 15, y: sizeLabel.frame.origin.y + sizeLabel.frame.height + 5, width: frame.width*0.23, height: 15))
        ratingLabel.text = "Rating"
        ratingLabel.textColor = .gray
        ratingLabel.textAlignment = .right
        addSubview(ratingLabel)
        
        familyLabel = UILabel(frame: CGRect(x: 15, y: ratingLabel.frame.origin.y + ratingLabel.frame.height + 5, width: frame.width*0.23, height: 15))
        familyLabel.text = "Family Sharing"
        familyLabel.textColor = .gray
        familyLabel.textAlignment = .right
        addSubview(familyLabel)
        
        
        sellerTextLabel = UILabel(frame: CGRect(x: sellerLabel.frame.origin.x + sellerLabel.frame.width + 10, y: sellerLabel.frame.origin.y, width: frame.width*0.77, height: 15))
        sellerTextLabel.text = "Disney Publishing Worldwide Applications"
        sellerTextLabel.textAlignment = .left
        addSubview(sellerTextLabel)
        
        categoryTextLabel = UILabel(frame: CGRect(x: categoryLabel.frame.origin.x + categoryLabel.frame.width + 10, y: categoryLabel.frame.origin.y, width: frame.width*0.77, height: 15))
        categoryTextLabel.text = "Entertainment"
        categoryTextLabel.textAlignment = .left
        addSubview(categoryTextLabel)
        
        updatedTextLabel = UILabel(frame: CGRect(x: updatedLabel.frame.origin.x + updatedLabel.frame.width + 10, y: updatedLabel.frame.origin.y, width: frame.width*0.77, height: 15))
        updatedTextLabel.text = "May 1, 2017"
        updatedTextLabel.textAlignment = .left
        addSubview(updatedTextLabel)
        
        versionTextLabel = UILabel(frame: CGRect(x: versionLabel.frame.origin.x + versionLabel.frame.width + 10, y: versionLabel.frame.origin.y, width: frame.width*0.77, height: 15))
        versionTextLabel.text = "1.0"
        versionTextLabel.textAlignment = .left
        addSubview(versionTextLabel)
        
        sizeTextLabel = UILabel(frame: CGRect(x: sizeLabel.frame.origin.x + sizeLabel.frame.width + 10, y: sizeLabel.frame.origin.y, width: frame.width*0.77, height: 15))
        sizeTextLabel.text = "119 MB"
        sizeTextLabel.textAlignment = .left
        addSubview(sizeTextLabel)
        
        ratingTextLabel = UILabel(frame: CGRect(x: ratingLabel.frame.origin.x + ratingLabel.frame.width + 10, y: ratingLabel.frame.origin.y, width: frame.width*0.77, height: 15))
        ratingTextLabel.text = "Ages 4+, Made for Ages 6-8"
        ratingTextLabel.textAlignment = .left
        addSubview(ratingTextLabel)
        
        familyTextLabel = UILabel(frame: CGRect(x: familyLabel.frame.origin.x + familyLabel.frame.width + 10, y: familyLabel.frame.origin.y, width: frame.width*0.77, height: 15))
        familyTextLabel.text = "Yes"
        familyTextLabel.textAlignment = .left
        addSubview(familyTextLabel)
        
        // set font size for all labels
        for view in subviews {
            if let label = view as? UILabel {
                label.font = label.font.withSize(12)
            }
        }
        informationLabel.font = informationLabel.font.withSize(18)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
