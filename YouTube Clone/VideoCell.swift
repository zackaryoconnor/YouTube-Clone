//
//  VideoCell.swift
//  YouTube Clone
//
//  Created by Zackary O'Connor on 3/24/20.
//  Copyright © 2020 Zackary O'Connor. All rights reserved.
//

import UIKit

class VideoCell: UICollectionViewCell {
    
    let videoThumbnailImageView = UIImageView(image: "", cornerRadius: 0)
    
    let profileImageViewSize: CGFloat = 42
    lazy var profileImageView = UIImageView(image: "", cornerRadius: profileImageViewSize / 2)
    
    let videoTitle = UILabel(text: "video title", textColor: .label, fontSize: 17, fontWeight: .regular, textAlignment: .left, numberOfLines: 1)
    
    let videoCreatorNameViewsPublishDate = UILabel(text: "creator name • 1.4K views • 1 hour ago", textColor: .secondaryLabel, fontSize: 14, fontWeight: .regular, textAlignment: .left, numberOfLines: 1)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        videoThumbnailImageView.backgroundColor = .systemGray4
        
        profileImageView.backgroundColor = .systemGray4
        profileImageView.constrainWidth(constant: profileImageViewSize)
        profileImageView.constrainHeight(constant: profileImageViewSize)
        
        let spacer = UIView()
        spacer.constrainWidth(constant: 0)
        
        let stack = UIStackView(arrangedSubviews: [
            videoThumbnailImageView,
            UIStackView(arrangedSubviews: [spacer,
                                           profileImageView,
                                           UIStackView(arrangedSubviews: [videoTitle,
                                                                          videoCreatorNameViewsPublishDate], customSpacing: -8, axis: .vertical)
            ], customSpacing: 16, axis: .horizontal)
        ], customSpacing: 8, axis: .vertical)
        
        addSubview(stack)
        stack.fillSuperview(padding: .init(top: 0, left: 0, bottom: 24, right: 0))
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
