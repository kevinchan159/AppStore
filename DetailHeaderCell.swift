//
//  DetailHeaderCell.swift
//  AppStore
//
//  Created by Kevin Chan on 7/10/17.
//  Copyright © 2017 Kevin Chan. All rights reserved.
//

import UIKit

class DetailHeaderCell: UICollectionViewCell {
    
    var appImageView: UIImageView!
    var appLabel: UILabel!
    var categoryLabel: UILabel!
    var appPriceButton: UIButton!
    var appSegmentedControl: UISegmentedControl!
    var dividerLine: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        appImageView = UIImageView(frame: CGRect(x: 15, y: 15, width: 100, height: 100))
        appImageView.image = #imageLiteral(resourceName: "frozen")
        appImageView.layer.cornerRadius = 16
        appImageView.layer.masksToBounds = true
        addSubview(appImageView)
        
        appLabel = UILabel(frame: CGRect(x: appImageView.frame.origin.x + appImageView.frame.width + 10, y: appImageView.frame.origin.y, width: frame.width - appImageView.frame.width - 15, height: 25))
        appLabel.text = "TESTING"
        addSubview(appLabel)
        
        categoryLabel = UILabel(frame: CGRect(x: appLabel.frame.origin.x, y: appLabel.frame.origin.y + appLabel.frame.height, width: appLabel.frame.width, height: appLabel.frame.height))
        categoryLabel.textColor = .gray
        categoryLabel.font = categoryLabel.font.withSize(15)
        addSubview(categoryLabel)
        
        appPriceButton = UIButton(frame: CGRect(x: 0, y: 0, width: 70, height: 25))
        appPriceButton.center = CGPoint(x: frame.width*0.8, y: frame.height*0.6)
        appPriceButton.setTitle("FREE", for: .normal)
        appPriceButton.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        appPriceButton.layer.cornerRadius = 7
        appPriceButton.layer.borderWidth = 1
        appPriceButton.layer.borderColor = UIColor.blue.cgColor
        appPriceButton.setTitleColor(.blue, for: .normal)
        addSubview(appPriceButton)
        
        appSegmentedControl = UISegmentedControl(items: ["Details", "Reviews", "Related"])
        appSegmentedControl.tintColor = .gray
        appSegmentedControl.frame = CGRect(x: appSegmentedControl.frame.origin.x, y: appSegmentedControl.frame.origin.y, width: frame.width*0.8, height: 30)
        appSegmentedControl.center = CGPoint(x: frame.width/2, y: frame.height*0.85)
        appSegmentedControl.selectedSegmentIndex = 0
        addSubview(appSegmentedControl)
        
        dividerLine = UIView(frame: CGRect(x: 15, y: frame.height-1, width: frame.width-30, height: 0.5))
        dividerLine.backgroundColor = UIColor.lightGray
        addSubview(dividerLine)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
