//
//  ItemListDataSources.swift
//  CodingAssignment
//
//  Created by Vaibhav Agarwal on 01/05/22.
//

import Foundation
import UIKit

class ItemListDataSource: ListDataSource{
    
    var sections: [SectionDataSource]
    var numberOSections: Int{
        return sections.count
    }
    
    init(sections: [SectionDataSource]){
        self.sections = sections
    }
}

class ItemSectionDataSource: SectionDataSource{
    
    let title: String
    let identifier: String
    let height: CGFloat
    let width: CGFloat
    
    var rows: [RowDataSource]
    var numberOfRows: Int{
        return rows.count
    }
    
    
    var size: CGSize{
        return CGSize(width: width, height: height)
    }
    
    init(rows: [RowDataSource],
         title: String,
         identifier: String,
         height: CGFloat,
         width: CGFloat){
        self.rows = rows
        self.title = title
        self.identifier = identifier
        self.width = width
        self.height = height
    }
}

