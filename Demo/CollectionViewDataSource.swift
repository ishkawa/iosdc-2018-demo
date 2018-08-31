//
//  CollectionViewDataSource.swift
//  Demo
//
//  Created by Yosuke Ishikawa on 2018/08/28.
//  Copyright © 2018年 Yosuke Ishikawa. All rights reserved.
//

import UIKit

class CollectionViewDataSource<CellDeclaration>: NSObject, UICollectionViewDataSource {
    var cellDeclarations = [] as [CellDeclaration]

    private var registeredReuseIdentifiers = [] as [String]
    private let binderFromDeclaration: (CellDeclaration) -> CellBinder

    init(binderFromDeclaration: @escaping (CellDeclaration) -> CellBinder) {
        self.binderFromDeclaration = binderFromDeclaration
        super.init()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellDeclarations.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellBinder = binderFromDeclaration(cellDeclarations[indexPath.item])
        if !registeredReuseIdentifiers.contains(cellBinder.reuseIdentifier) {
            collectionView.register(cellBinder.nib, forCellWithReuseIdentifier: cellBinder.reuseIdentifier)
            registeredReuseIdentifiers.append(cellBinder.reuseIdentifier)
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellBinder.reuseIdentifier, for: indexPath)
        cellBinder.configureCell(cell)

        return cell
    }
}
