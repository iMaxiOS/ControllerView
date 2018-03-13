//
//  MenuCollectionViewCell.swift
//  CollectionView
//
//  Created by iMaxiOS on 12.03.18.
//  Copyright © 2018 iMaxiOS. All rights reserved.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var menu: Menu? {
        didSet {
            nameLabel.text = menu?.name
            if let image = menu?.nameImage {
                imageView.image = UIImage(named: image)
            }
        }
    }
    
}
