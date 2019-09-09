//
//  SimpleTableViewController2.swift
//  iOSProject
//
//  Created by Magdalena on 09/09/2019.
//  Copyright © 2019 Magdalena. All rights reserved.
//

import UIKit

class SimpleTableViewController2: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return subCategories[myIndex].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemName2", for: indexPath)
        cell.textLabel?.text = subCategories[myIndex][indexPath.row]
        return cell
    }
}
