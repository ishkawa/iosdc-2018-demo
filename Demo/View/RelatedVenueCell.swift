//
//  RelatedVenueCell.swift
//  Demo
//
//  Created by Yosuke Ishikawa on 2018/08/31.
//  Copyright © 2018年 Yosuke Ishikawa. All rights reserved.
//

import UIKit

final class RelatedVenueCell: CollectionViewFullWidthCell {
    @IBOutlet private weak var photoImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    
    override var numberOfColumns: Int {
        return 2
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        photoImageView.layer.masksToBounds = true
        photoImageView.layer.cornerRadius = 2
    }
}

extension RelatedVenueCell: BindableNibCell {
    static var nib: UINib {
        return UINib(nibName: "RelatedVenueCell", bundle: nil)
    }
    
    static var reuseIdentifier: String {
        return "RelatedVenue"
    }
    
    func bind(_ venue: Venue) {
        photoImageView.image = venue.photo
        nameLabel.text = venue.name
    }
}
