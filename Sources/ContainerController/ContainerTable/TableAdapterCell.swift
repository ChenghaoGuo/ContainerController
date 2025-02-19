//
//  TableAdapterCell.swift
//  PatternsSwift
//
//  Created by mrustaa on 17/04/2020.
//  Copyright © 2020 mrustaa. All rights reserved.
//

import UIKit

open class TableAdapterCell: UITableViewCell {
  
  @IBInspectable var hideAnimation: Bool = false
  open var selectedView: UIView?
  
  public var cellData: TableAdapterCellData?
  
  public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setupCommonProperties()
    addViewsToCell()
  }
  
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupCommonProperties()
    addViewsToCell()
  }
  
  open func setupCommonProperties() {
    // self.selectionStyle = .none
  }
  
  open func addViewsToCell() {
    
  }
  
  open func fill(data: TableAdapterCellData?) {
    
  }
  
  let selAlpha: CGFloat = 0.2 // 0.15
  
  open override func setSelected(_ selected: Bool, animated: Bool) {
    
    if hideAnimation {
      
      if selected {
        alpha = 0.5
        UIView.animate(withDuration: 0.45) {
          self.alpha = 1
        }
      } else {
        self.alpha = 1
      }
      
    } else {
      if let selectedView = selectedView {
        if selected {
          selectedView.alpha = selAlpha
          UIView.animate(withDuration: 0.45) {
            selectedView.alpha = 0.0
          }
        } else {
          selectedView.alpha = 0.0
        }
      } else {
        super.setSelected(selected, animated: animated)
      }
    }
    
  }
  
  open override func setHighlighted(_ highlighted: Bool, animated: Bool) {
    
    if hideAnimation {
      if highlighted {
        UIView.animate(withDuration: 0.1) {
          self.alpha = 0.5
        }
      } else {
        UIView.animate(withDuration: 0.45) {
          self.alpha = 1
        }
      }
    } else {
      if let selectedView = selectedView {
        if highlighted {
          UIView.animate(withDuration: 0.1) {
            selectedView.alpha = self.selAlpha
          }
        } else {
          UIView.animate(withDuration: 0.45) {
            selectedView.alpha = 0.0
          }
        }
      } else {
        super.setHighlighted(highlighted, animated: animated)
      }
    }
    
  }
  
}
