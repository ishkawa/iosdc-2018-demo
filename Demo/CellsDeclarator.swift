//
//  CellsDeclarator.swift
//  Demo
//
//  Created by Yosuke Ishikawa on 2018/08/30.
//  Copyright © 2018年 Yosuke Ishikawa. All rights reserved.
//

import Foundation

protocol CellsDeclarator {
    associatedtype CellDeclaration
    func declareCells(_ cell: (CellDeclaration) -> Void)
}

extension CellsDeclarator {
    var cellDeclarations: [CellDeclaration] {
        var declarations = [] as [CellDeclaration]
        declareCells { declaration in
            declarations.append(declaration)
        }
        return declarations
    }
}
