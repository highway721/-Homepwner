//
//  ItemsViewController.swift
//  Homepwner
//
//  Created by Yusuke Tomatsu on 2020/02/17.
//  Copyright © 2020 Yusuke Tomatsu. All rights reserved.
//

import UIKit
class itemsViewController: UITableViewController{
    var itemStore: ItemStore!
    override func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int)-> Int{
        return itemStore.allItems.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        //Create an instance of UITableViewCell, with default appearance
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")
        // Set the text on the cell with the description of the item
        // that is at the nth index of items, where n = row this cell
        // will appear in on the tableview
        let item = itemStore.allItems[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell
    }
}

