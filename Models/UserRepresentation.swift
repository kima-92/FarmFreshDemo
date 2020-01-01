//
//  UserRepresentation.swift
//  FarmFreshDemo
//
//  Created by macbook on 1/1/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

struct UserRepresentation: Codable {
    let username: String
    let password: String
    let firstName: String
    let lastName: String
    let id: UUID
    let isLoggedIn: Bool
}
