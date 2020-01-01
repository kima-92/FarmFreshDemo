//
//  Produce+Convenience.swift
//  FarmFreshDemo
//
//  Created by macbook on 1/1/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
import CoreData

extension Produce {
    
    // MARK: ProduceRepresentation Setup
    var produceRepresentation: ProduceRepresentation? {
        
        guard let name = name,
            let id = id,
            let image = image else { return nil }
        
        return ProduceRepresentation(name: name, id: id, image: image)
        
    }
    
    // MARK: CoreData Initializer
    @discardableResult convenience init(name: String,
                                        id: UUID = UUID(),  //Setting up an id from it's CD Creation
                                        image: String,
                                        context: NSManagedObjectContext) {
        
        self.init(context: context)
        
        self.name = name
        self.id = id
        self.image = image
    }
    
    // MARK: Init from Representation
    @discardableResult convenience init?(produceRepresentation: ProduceRepresentation, context: NSManagedObjectContext) {
        
//        guard let id =
        
        self.init(name: produceRepresentation.name,
                  id: produceRepresentation.id,
                  image: produceRepresentation.image,
                  context: context)
    }
}
