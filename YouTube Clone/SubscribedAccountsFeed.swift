//
//  SubscribedAccountsFeed.swift
//  YouTube Clone
//
//  Created by Zackary O'Connor on 3/23/20.
//  Copyright © 2020 Zackary O'Connor. All rights reserved.
//

import UIKit

class SubscribedAccountsFeed: UICollectionViewCell {
    
    let accountProfilePictureSize: CGFloat = 64
    lazy var accountProfilePicture = UIImageView(image: "", cornerRadius: accountProfilePictureSize / 2)
    
    var accountProfileName = UILabel(text: "creator name", textColor: .label, fontSize: 14, fontWeight: .regular, textAlignment: .center, numberOfLines: 1)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        accountProfilePicture.backgroundColor = .systemGray4
        accountProfilePicture.constrainWidth(constant: accountProfilePictureSize)
        accountProfilePicture.constrainHeight(constant: accountProfilePictureSize)
        
        let stack = UIStackView(arrangedSubviews: [
            accountProfilePicture,
            accountProfileName
        ], customSpacing: 4, axis: .vertical)
        
        addSubview(stack)
        stack.centerInSuperview()
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
