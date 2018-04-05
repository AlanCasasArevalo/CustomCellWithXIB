//
//  RDCell.swift
//  CustomCellUsingXIB
//
//  Created by Alan Casas on 5/4/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import UIKit

class RDCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var commentLabel: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
//    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//        imageView.image = #imageLiteral(resourceName: "star")
//        nameLabel.text = "Alan"
//        commentLabel.text = "Estamos"
//    }

}
