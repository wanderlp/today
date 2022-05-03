//
//  ViewController.swift
//  Today
//
//  Created by Wanderson López on 3/05/22.
//

import UIKit

class ReminderListViewController: UICollectionViewController {
    // Type aliases are helpful for referring to an existing
    // type with a name that's more expressive
    typealias DataSource = UICollectionViewDiffableDataSource<Int, String>
    
    var dataSource: DataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listLayout = listLayout()
        collectionView.collectionViewLayout = listLayout
        
        // Cell registration specifies how to configure the content
        // and appearance of a cell
        let cellRegistration = UICollectionView.CellRegistration { (cell: UICollectionViewListCell, indexPath: IndexPath, itemIdentifier: String) in
            let reminder = Reminder.sampleData[indexPath.item]
            
            // defaultContentConfiguration() creates a content
            // configuration with the predefined system style
            var contentConfiguration = cell.defaultContentConfiguration()
            contentConfiguration.text = reminder.title
            cell.contentConfiguration = contentConfiguration
        }
        
        dataSource = DataSource(collectionView: collectionView) { (collectionView: UICollectionView, indexPath: IndexPath, itemIdentifier: String) in
            // In the initializer, you pass a closure that
            // configures and returns a cell for a collection
            // view. The closure accepts two inputs: an index
            // path to the location of the cell in the collection
            // view and an item identifier
            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: itemIdentifier)
            
            // You could create a new cell for every item, but
            // the initialization cost would degrade your app's
            // performance. Reusing cells allows your app to
            // perform well even with a vast number of items
        }
    }
    
    private func listLayout() -> UICollectionViewCompositionalLayout {
        var listConfiguration = UICollectionLayoutListConfiguration(appearance: .grouped)
        listConfiguration.showsSeparators = false
        listConfiguration.backgroundColor = .clear
        return UICollectionViewCompositionalLayout.list(using: listConfiguration)
    }
}
