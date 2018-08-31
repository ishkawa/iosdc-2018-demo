//
//  VenueOutlineCell.swift
//  Demo
//
//  Created by Yosuke Ishikawa on 2018/08/31.
//  Copyright © 2018年 Yosuke Ishikawa. All rights reserved.
//

import UIKit

final class VenueOutlineCell: CollectionViewFullWidthCell {
    @IBOutlet private weak var photoImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
}

extension VenueOutlineCell: BindableNibCell {
    static var nib: UINib {
        return UINib(nibName: "VenueOutlineCell", bundle: nil)
    }
    
    static var reuseIdentifier: String {
        return "VenueOutline"
    }
    
    func bind(_ venue: Venue) {
        photoImageView.image = venue.photo
        nameLabel.text = venue.name
    }
}
