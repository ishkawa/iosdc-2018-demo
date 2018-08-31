//
//  ReviewCell.swift
//  Demo
//
//  Created by Yosuke Ishikawa on 2018/08/31.
//  Copyright © 2018年 Yosuke Ishikawa. All rights reserved.
//

import UIKit

final class ReviewCell: CollectionViewFullWidthCell {
    @IBOutlet private weak var authorImageView: UIImageView!
    @IBOutlet private weak var authorNameLabel: UILabel!
    @IBOutlet private weak var bodyLabel: UILabel!
}

extension ReviewCell: BindableNibCell {
    static var nib: UINib {
        return UINib(nibName: "ReviewCell", bundle: nil)
    }
    
    static var reuseIdentifier: String {
        return "Review"
    }
    
    func bind(_ review: Review) {
        authorImageView.image = review.authorImage
        authorNameLabel.text = review.authorName
        bodyLabel.text = review.body
    }
}
