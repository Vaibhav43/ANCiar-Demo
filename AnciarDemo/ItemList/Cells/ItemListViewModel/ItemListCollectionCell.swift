//
//  ItemListCollectionCell.swift
//  CodingAssignment
//
//  Created by Vaibhav Agarwal on 4/30/22.
//

import UIKit

class ItemListCollectionCell: UICollectionViewCell, CollectionCellConfiguration {

    @IBOutlet weak var containerView: UIView!
    private var viewModel: ItemListCellViewModel?
    private var indexPath: IndexPath?
    private var delegate: RowDataSourceSelectedDelegate?
    
    //MARK: Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    //MARK: Setup
    
    func setup(rowDataSource: RowDataSource, delegate: RowDataSourceSelectedDelegate?, indexPath: IndexPath) {
        
        guard let viewModel = rowDataSource as? ItemListCellViewModel else {
            return
        }

        self.viewModel = viewModel
        self.indexPath = indexPath
        self.delegate = delegate
        self.containerView.backgroundColor = viewModel.color
    }
}
