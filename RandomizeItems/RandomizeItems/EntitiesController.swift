//
//  EntitiesController.swift
//  RandomizeItems
//
//  Created by Retika Kumar on 3/11/16.
//  Copyright © 2016 kumar.retika. All rights reserved.
//

import Foundation

class EntitiesController {
    
    private let entityKey = "entity"
    
    static let sharedController = EntitiesController()
    
    var entities: [Entity]
    
    init() {
        
        self.entities = []
        
        self.loadFromPersistentStorage()
    }
    
    func addEntity(entity: Entity) {
        
        entities.append(entity)
        
        self.saveToPersistentStorage()
    }
    
    func removeEntry(entity: Entity) {
        
        
            entities.removeLast()
            
        
    }
    
    func loadFromPersistentStorage() {
        
        let entityDictionariesFromDefaults = NSUserDefaults.standardUserDefaults().objectForKey(entityKey) as? [Dictionary<String, AnyObject>]
        
        if let entityDictionaries = entityDictionariesFromDefaults {
            
            self.entities = entityDictionaries.map({Entity(dictionary: $0)!})
        }
    }
    
    func saveToPersistentStorage() {
        
        let entityDictionaries = self.entities.map({$0.dictionaryCopy()})
        
        NSUserDefaults.standardUserDefaults().setObject(entityDictionaries, forKey: entityKey)
    }
    
}