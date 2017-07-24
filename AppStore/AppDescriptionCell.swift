//
//  AppDescriptionCell.swift
//  AppStore
//
//  Created by Kevin Chan on 7/11/17.
//  Copyright © 2017 Kevin Chan. All rights reserved.
//

import UIKit

class AppDescriptionCell: UICollectionViewCell {
    
    var descriptionTitleLabel: UILabel!
    var descriptionLabel: UILabel!
    var dividerLine: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        descriptionTitleLabel = UILabel(frame: CGRect(x: 15, y: 0, width: frame.width-30, height: 25))
        descriptionTitleLabel.text = "Description"
        descriptionTitleLabel.textAlignment = .left
        descriptionTitleLabel.textColor = .black
        addSubview(descriptionTitleLabel)
        
        descriptionLabel = UILabel(frame: CGRect(x: 15, y: descriptionTitleLabel.frame.origin.y + descriptionTitleLabel.frame.height, width: frame.width-30, height: frame.height-15))
        descriptionLabel.text = "Join your friends from FROZEN to build your very own version of Arendelle and let your imagination run wild! Customize FROZEN buildings and add tons of props to design your worlds any way you like..."
        descriptionLabel.textColor = .gray
        descriptionLabel.textAlignment = .left
        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = descriptionLabel.font.withSize(12)
        addSubview(descriptionLabel)
        
        dividerLine = UIView(frame: CGRect(x: 15, y: frame.height-1, width: frame.width-30, height: 0.5))
        dividerLine.backgroundColor = UIColor.lightGray
        addSubview(dividerLine)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
