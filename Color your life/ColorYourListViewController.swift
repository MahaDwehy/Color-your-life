//
//  ViewController.swift
//  Color your life
//
//  Created by Maha AlDwehy on 06/01/1440 AH.
//  Copyright © 1440 Maha AlDwehy. All rights reserved.
//

import UIKit

class ColorYourListViewController: UITableViewController {
    
    let itemArray = ["Find ","Buy Eggos","Destory"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
             tableView.cellForRow(at: indexPath)?.accessoryType == .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }


}

