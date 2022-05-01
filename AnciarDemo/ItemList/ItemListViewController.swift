//
//  ItemListViewController.swift
//  AnciarDemo
//
//  Created by Vaibhav Agarwal on 01/05/22.
//

import UIKit

class ItemListViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!{
        didSet{
        }
    }
    
    
    var vm: ItemListViewModelProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vm = ItemListViewModel()
        vm.setup()
    }
}
