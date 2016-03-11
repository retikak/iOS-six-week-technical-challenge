//
//  DetailViewController.swift
//  RandomizeItems
//
//  Created by Retika Kumar on 3/11/16.
//  Copyright © 2016 kumar.retika. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    var array = ["ret", "time", "lol"]
    //let newRandomizedEntity = Int(arc4random_uniform(UInt32(array.count)))
    
    
    var entity: Entity?
    
    
    @IBOutlet weak var addNewNameTextField: UITextField!

    @IBOutlet weak var resultLabelTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func playButtonTapped(sender: UIBarButtonItem) {
        
       if let entity = self.entity {
           entity.name = self.resultLabelTextField.text!
            
        }
        
    }
    
    @IBAction func addNameButtonTapped(sender: UIButton)
    {
      var newArray = array.append(addNewNameTextField.text!)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
