//
//  User+Convenience.swift
//  FarmFreshDemo
//
//  Created by macbook on 1/1/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
import CoreData

extension User {
    
    // MARK: UserRepresentation Setup
    var userRepresentation: UserRepresentation? {
        
        guard let username = username,
            let password = password,
            let id = id,
            let firstName = firstName,
            let lastName = lastName else { return nil }
        
        return UserRepresentation(username: username, password: password, id: id, isLoggedIn: isLoggedIn, firstName: firstName, lastName: lastName)
        
    }
    
    // MARK: CoreData Initializer
    @discardableResult convenience init(username: String,
                                        password: String,
                                        id: UUID = UUID(),  //Setting up an id from it's CD Creation
                                        isLoggedIn: Bool,
                                        firstName: String,
                                        lastName: String,
                                        context: NSManagedObjectContext) {
        
        self.init(context: context)
        
        self.username = username
        self.password = password
        self.id = id
        self.isLoggedIn = isLoggedIn
        self.firstName = firstName
        self.lastName = lastName
    }
    
    // MARK: Init from Representation
    @discardableResult convenience init?(userRepresentation: UserRepresentation, context: NSManagedObjectContext) {
        
//        guard let id =
        
        self.init(username: userRepresentation.username,
                  password: userRepresentation.password,
                  id: userRepresentation.id,
                  isLoggedIn: userRepresentation.isLoggedIn,
                  firstName: userRepresentation.firstName,
                  lastName: userRepresentation.lastName,
                  context: context)
    }
    
    
}
