//
//  ItemListCellViewModel.swift
//  CodingAssignment
//
//  Created by Vaibhav Agarwal on 01/05/22.
//

import Foundation
import UIKit

class ItemListCellViewModel: RowDataSource{
    
    let color: UIColor
    
    var identifier: String = "ItemListCollectionCell"
    var height: CGFloat = 100
    var width: CGFloat
    var size: CGSize{
        return CGSize(width: width, height: height)
    }
    
    init(color: UIColor,
         width: CGFloat){
        self.color = color
        self.width = width
    }
}
