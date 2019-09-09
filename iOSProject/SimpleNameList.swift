//
//  SimpleNameList.swift
//  iOSProject
//
//  Created by Magdalena on 09/09/2019.
//  Copyright © 2019 Magdalena. All rights reserved.
//

import UIKit

var categoryList = ["Muzyka", "Filmy", "Sport"]
var subCategories = [["muzyka1", "muzyka2"], ["filmy1"], ["sport1", "sport2", "sport3"]]
var myIndex = 0
class SimpleNameList: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemName")
        cell?.textLabel?.text = categoryList[indexPath.row]
        return cell!
    }
 
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
}
