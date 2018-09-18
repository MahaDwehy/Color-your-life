//
//  ViewController.swift
//  Color your life
//
//  Created by Maha AlDwehy on 06/01/1440 AH.
//  Copyright © 1440 Maha AlDwehy. All rights reserved.
//

import UIKit

class ColorYourListViewController: UITableViewController {
    
    var itemArray = [Item]()
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let newItem = Item()
        newItem.title = "Find Mike"
        itemArray.append(newItem)
        
        let newItem2 = Item()
        newItem2.title = "Maha"
        itemArray.append(newItem2)
        
        let newItem3 = Item()
        newItem3.title = "Dwehy"
        itemArray.append(newItem3)
        
        
        if let items = UserDefaults.standard.array(forKey: "ColorListArray") as? [Item] {
            itemArray = items
        }
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
        let item = itemArray[indexPath.row]
        cell.textLabel?.text = item.title
        
        cell.accessoryType = item.done == true ? .checkmark : .none
       
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(itemArray[indexPath.row])
        itemArray[indexPath.row].done = !itemArray[indexPath.row].done
        
        
        tableView.reloadData()
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //MARK - Add New Items
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add New Item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
            // What will happen once the user clicks the ass item button on our UIAlert
            
            let newItem = Item()
            newItem.title = textField.text!
       self.itemArray.append(newItem)
            self.defaults.set(self.itemArray, forKey: "ColorListArray")
            self.tableView.reloadData()
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new item"
            textField = alertTextField
        }
            alert.addAction(action)
        present(alert, animated:  true, completion: nil)
  
    }
    

}

