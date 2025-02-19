//
//  CollectionAdapterTypes.swift
//  PatternsSwift
//
//  Created by mrustaa on 01/05/2020.
//  Copyright © 2020 mrustaa. All rights reserved.
//

import UIKit

public typealias CollectionAdapterCountCallback = () -> Int
public typealias CollectionAdapterCellIndexCallback = (_ index: Int) -> UICollectionViewCell
public typealias CollectionAdapterSizeIndexCallback = (_ index: Int) -> CGSize
public typealias CollectionAdapterSelectIndexCallback = (_ index: Int) -> Void
