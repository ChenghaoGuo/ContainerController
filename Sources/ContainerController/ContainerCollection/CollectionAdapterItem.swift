//
//  CollectionAdapterItem.swift
//  PatternsSwift
//
//  Created by mrustaa on 01/05/2020.
//  Copyright © 2020 mrustaa. All rights reserved.
//

import UIKit

open class CollectionAdapterItem: NSObject {
  
  public let cellClass: AnyClass
  
  public let useNib: Bool
  
  public let cellData: CollectionAdapterCellData?
  
  public var cellReuseIdentifier: String {
    return String(describing: cellClass)
  }
  
  public init(cellClass: AnyClass, useNib: Bool = true, cellData: CollectionAdapterCellData? = nil) {
    self.cellClass = cellClass
    self.useNib = useNib
    self.cellData = cellData
  }
  
  public func size() -> CGSize {
    return cellData?.size() ?? CGSize.zero
  }
  
}
