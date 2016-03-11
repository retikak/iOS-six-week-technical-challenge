//
//  Entities.swift
//  RandomizeItems
//
//  Created by Retika Kumar on 3/11/16.
//  Copyright © 2016 kumar.retika. All rights reserved.
//

import Foundation
class Entity {
    
    private let nameKey = "name"
    
    
    var name: String
    
    
    init(name: String) {
        
        self.name = name
    }
    
    init?(dictionary: Dictionary<String, AnyObject>) {
        guard let name = dictionary[nameKey] as? String else {
            
            
                self.name = " "
                
                return nil
        }
        
        self.name = name    }
    
    func dictionaryCopy() -> Dictionary<String, AnyObject> {
        
        let dictionary = [
            nameKey : self.name]
        
        return dictionary
    }
    
}

