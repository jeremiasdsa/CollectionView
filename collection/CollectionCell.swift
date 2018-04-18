//
//  CollectionCell.swift
//  collection
//
//  Created by Jeremias Serafim on 13/04/18.
//  Copyright © 2018 Jeremias Serafim. All rights reserved.
//

import UIKit

class CollectionCell: UICollectionViewCell {

    @IBOutlet weak var borderYellow: UIView!
    @IBOutlet weak var backgroundGray: UIView!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var lbindex: UILabel!
    
    var isBorderYellow = false {
        didSet {
            if isBorderYellow {
                borderYellow.backgroundColor = .yellow
            } else {
                borderYellow.backgroundColor = .black
            }
        }
    }
    
    var isLoading = true {
        didSet {
            if isLoading {
                indicator.startAnimating()
            } else {
                indicator.stopAnimating()
            }
        }
    }
    
    var shouldDisplayGray = true {
        didSet {
            if shouldDisplayGray {
                backgroundGray.isHidden = false
            } else {
                backgroundGray.isHidden = true
            }
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
}
