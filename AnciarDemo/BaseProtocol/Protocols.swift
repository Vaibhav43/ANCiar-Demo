//
//  Protocols.swift
//  CodingAssignment
//
//  Created by Vaibhav Agarwal on 5/1/22.
//

import Foundation
import UIKit

protocol ListDataSource: AnyObject{
    var sections: [SectionDataSource] {get set}
    var numberOSections: Int {get}
}

protocol SectionDataSource: AnyObject{
    var rows: [RowDataSource] {get set}
    var numberOfRows: Int {get}
}

protocol RowDataSource{
    var identifier: String {get}
    var height: CGFloat {set get}
    var width: CGFloat {set get}
    var size: CGSize {get}
}

protocol CollectionCellConfiguration: UICollectionViewCell{
    func setup(rowDataSource: RowDataSource, delegate: RowDataSourceSelectedDelegate?, indexPath: IndexPath)
}

protocol RowDataSourceSelectedDelegate{
    func selected(rowDataSource: RowDataSource, at indexPath: IndexPath)
}

protocol CollectionSectionConfiguration: UICollectionReusableView{
    func setup(sectionDataSource: SectionDataSource, section: Int)
}
