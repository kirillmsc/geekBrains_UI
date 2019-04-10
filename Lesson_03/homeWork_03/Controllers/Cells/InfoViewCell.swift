//
//  InfoViewCell.swift
//  homeWork_03
//
//  Created by k.kochemasov on 11/04/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

class InfoViewCell: UICollectionViewCell {
    
    @IBOutlet var infoViewCell: UIImageView!
    @IBOutlet var nameInfoLabel: UILabel!
    @IBOutlet var surnameInfoLabel: UILabel!
    @IBOutlet var yearsInfoLabel: UILabel!
    @IBOutlet var cityInfoLabel: UILabel!
    
    static let reuseId = "InfoViewCell"
    
}
