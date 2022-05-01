//
//  ItemListMapper.swift
//  CodingAssignment
//
//  Created by Vaibhav Agarwal on 30/04/22.
//

import Foundation
import UIKit

protocol ItemListMapperProtocol{
    func parseItems() -> ListDataSource
}

class ItemListMapper: ItemListMapperProtocol{
    
    private struct Constants{
        static let dataArray: [String] = ["Item1", "Item2", "Item3", "Item4", "Item5", "Item6","Item7","Item8","Item9", "Item10"]
        static let colorArray: [UIColor] = [UIColor.red, .gray, .green, .blue, .yellow]
        static let sectionIdentifier = "ItemListCollectionReusableView"
    }
    
    func parseItems() -> ListDataSource{
        
        var sections: [SectionDataSource] = []
        
        for i in 0..<Constants.dataArray.count{
            
            let title = Constants.dataArray[i]
            let section = parseRows(title: title)
            sections.append(section)
        }
        
        let listDataSource = ItemListDataSource(sections: sections)
        return listDataSource
    }
    
    private func parseRows(title: String) -> SectionDataSource{
        
        var rows: [RowDataSource] = []
        
        for i in 0..<Constants.colorArray.count{
            
            let color = Constants.colorArray[i]
            var width = UIScreen.main.bounds.width
            
            if i != 2{
                width = width/2
                width -= 5
            }
            
            let viewModel = ItemListCellViewModel(color: color, width: width)
            rows.append(viewModel)
        }
        
        let section = ItemSectionDataSource(rows: rows, title: title, identifier: Constants.sectionIdentifier, height: 50, width: UIScreen.main.bounds.width)
        return section
    }
}
