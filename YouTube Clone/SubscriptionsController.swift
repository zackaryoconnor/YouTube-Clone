//
//  SubscriptionsController.swift
//  YouTube Clone
//
//  Created by Zackary O'Connor on 3/19/20.
//  Copyright © 2020 Zackary O'Connor. All rights reserved.
//

import UIKit
import SwiftUI

class SubscriptionsController: UICollectionViewController {
    
    let subscribedAccountsFeedCellId = "subscribedAccountsFeedCellId"
    let watchTypeCategoryCellId = "watchTypeCategoryCellId"
    let videoCellId = "videoCellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .systemBackground
        collectionView.register(SubscribedAccountsFeed.self, forCellWithReuseIdentifier: subscribedAccountsFeedCellId)
        collectionView.register(WatchTypeCategory.self, forCellWithReuseIdentifier: watchTypeCategoryCellId)
        collectionView.register(VideoCell.self, forCellWithReuseIdentifier: videoCellId)
        
        navigationItem.title = "YouTube"
    }
    
    
    init() {
        let layout = UICollectionViewCompositionalLayout { (sectionNumber, _) -> NSCollectionLayoutSection? in
            
            let itemInsets: CGFloat = 2
            
            if sectionNumber == 0 {
                let item = NSCollectionLayoutSupplementaryItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                item.contentInsets = NSDirectionalEdgeInsets(top: itemInsets,
                                                             leading: itemInsets,
                                                             bottom: itemInsets,
                                                             trailing: itemInsets)
                
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .absolute(86), heightDimension: .absolute(116)), subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                
                return section
                
            } else if sectionNumber == 1 {
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                item.contentInsets = NSDirectionalEdgeInsets(top: itemInsets,
                                                             leading: 12,
                                                             bottom: 8,
                                                             trailing: 12)
                
                let group = NSCollectionLayoutGroup.vertical(layoutSize: .init(widthDimension: .estimated(186), heightDimension: .absolute(42)), subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                section.interGroupSpacing = -16
                
                return section
                
            } else {
                
                
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                item.contentInsets = NSDirectionalEdgeInsets(top: itemInsets,
                                                             leading: itemInsets,
                                                             bottom: itemInsets,
                                                             trailing: itemInsets)
                
                let group = NSCollectionLayoutGroup.vertical(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(300)), subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                
                return section
            }
            
            
        }
        
        super.init(collectionViewLayout: layout)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}




extension SubscriptionsController {
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 2
            
        } else if section == 1 {
            return watchTypeCategoryArray.count
            
        }
        
        return 2
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: subscribedAccountsFeedCellId, for: indexPath) as! SubscribedAccountsFeed
            return cell
            
        } else if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: watchTypeCategoryCellId, for: indexPath) as! WatchTypeCategory
            
            cell.categoryLabel.text = watchTypeCategoryArray[indexPath.item]
            cell.clipsToBounds = true
            
            return cell
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: videoCellId, for: indexPath) as! VideoCell
        cell.clipsToBounds = true
        return cell
    }
}
