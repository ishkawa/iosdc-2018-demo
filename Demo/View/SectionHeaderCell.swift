//
//  SectionHeaderCell.swift
//  Demo
//
//  Created by Yosuke Ishikawa on 2018/08/31.
//  Copyright © 2018年 Yosuke Ishikawa. All rights reserved.
//

import UIKit

final class SectionHeaderCell: CollectionViewFullWidthCell {
    @IBOutlet private weak var titleLabel: UILabel!
}

extension SectionHeaderCell: BindableNibCell {
    static var nib: UINib {
        return UINib(nibName: "SectionHeaderCell", bundle: nil)
    }
    
    static var reuseIdentifier: String {
        return "SectionHeader"
    }
    
    func bind(_ title: String) {
        titleLabel.text = title
    }
}
