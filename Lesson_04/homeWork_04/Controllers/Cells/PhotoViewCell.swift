//
//  PhotoViewCell.swift
//  homeWork_03
//
//  Created by k.kochemasov on 10/04/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

class PhotoViewCell: UICollectionViewCell {
    
    static let reuseId = "PhotoViewCell"
    
    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var likeCount: UILabel!
    
}
