//
//  BindableNibCell.swift
//  Demo
//
//  Created by Yosuke Ishikawa on 2018/08/28.
//  Copyright © 2018年 Yosuke Ishikawa. All rights reserved.
//

import UIKit

protocol BindableNibCell {
    static var nib: UINib { get }
    static var reuseIdentifier: String { get }
    
    associatedtype Value
    func bind(_ value: Value)
}

extension BindableNibCell {
    static func makeBinder(with value: Value) -> CellBinder {
        return CellBinder(cellType: Self.self, value: value)
    }
}

struct CellBinder {
    let nib: UINib
    let reuseIdentifier: String
    let configureCell: (UICollectionViewCell) -> Void
    
    fileprivate init<Cell: BindableNibCell>(cellType: Cell.Type, value: Cell.Value) {
        self.nib = cellType.nib
        self.reuseIdentifier = cellType.reuseIdentifier
        self.configureCell = { cell in
            guard let cell = cell as? Cell else {
                fatalError("Could not cast UICollectionView cell to \(Cell.self)")
            }

            cell.bind(value)
        }
    }
}
