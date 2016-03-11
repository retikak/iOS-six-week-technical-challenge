//
//  ListTableVIewController.swift
//  RandomizeItems
//
//  Created by Retika Kumar on 3/11/16.
//  Copyright © 2016 kumar.retika. All rights reserved.
//

import UIKit

class ListTableVIewController: UITableViewController {
    
    
    let cellContent = ["Retika", "deepak", "lori"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellContent.count
        //EntitiesController.sharedController.entities.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("nameCell", forIndexPath: indexPath)
        
        //let entity = EntitiesController.sharedController.entities[indexPath.row]
        cell.textLabel?.text = cellContent[indexPath.row]
        
        return cell
    }
    
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            
            let entity = EntitiesController.sharedController.entities[indexPath.row]
            
            EntitiesController.sharedController.removeEntry(entity)
            
            // Delete the row from the table view
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "toDetailView" {
            
            if let detailViewController = segue.destinationViewController as? DetailViewController {
                
                
            }
            
        }
        
    }
}
