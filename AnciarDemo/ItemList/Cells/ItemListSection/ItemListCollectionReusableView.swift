//
//  ItemListCollectionReusableView.swift
//  CodingAssignment
//
//  Created by Vaibhav Agarwal on 01/05/22.
//

import UIKit

class ItemListCollectionReusableView: UICollectionReusableView, CollectionSectionConfiguration {

    @IBOutlet weak var titleLabel: UILabel!
    
    private var viewModel: ItemSectionDataSource?
    private var section: Int?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(sectionDataSource: SectionDataSource, section: Int) {
        
        guard let viewModel = sectionDataSource as? ItemSectionDataSource else {
            return
        }

        self.viewModel = viewModel
        self.section = section
        titleLabel.text = viewModel.title
    }
}
