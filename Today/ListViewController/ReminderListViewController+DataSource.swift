//
//  ReminderListViewController+DataSource.swift
//  Today
//
//  Created by Wanderson López on 3/05/22.
//

import UIKit

extension ReminderListViewController {
    // This extension will contain all the behaviors that
    // let the ReminderListViewController act as data
    // source to the reminder list
    // Type aliases are helpful for referring to an existing
    // type with a name that's more expressive
    typealias DataSource = UICollectionViewDiffableDataSource<Int, String>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Int, String>
    
    func cellRegistrationHandler(cell: UICollectionViewListCell, indexPath: IndexPath, id: String) {
        let reminder = Reminder.sampleData[indexPath.item]
        
        // defaultContentConfiguration() creates a content
        // configuration with the predefined system style
        var contentConfiguration = cell.defaultContentConfiguration()
        contentConfiguration.text = reminder.title
        contentConfiguration.secondaryText = reminder.dueDate.dayAndTimeText
        cell.contentConfiguration = contentConfiguration
    }
}
