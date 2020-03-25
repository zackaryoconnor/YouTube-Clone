//
//  WatchTypeCategory.swift
//  YouTube Clone
//
//  Created by Zackary O'Connor on 3/23/20.
//  Copyright © 2020 Zackary O'Connor. All rights reserved.
//

import UIKit

public let watchTypeCategoryArray = [
    "All",
    "Today",
    "Continue Watching",
    "Unwatched",
    "Live",
    "Posts"
]

class WatchTypeCategory: UICollectionViewCell {
    
    let categoryLabel = UILabel(text: "", textColor: .label, fontSize: 17, fontWeight: .regular, textAlignment: .center, numberOfLines: 1)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(categoryLabel)
        categoryLabel.centerInSuperview()
        
        backgroundColor = .systemGray5
        layer.cornerRadius =  13
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
