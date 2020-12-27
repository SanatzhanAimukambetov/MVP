//
//  Person.swift
//  MVP
//
//  Created by Sanatzhan Aimukambetov on 26.12.2020.
//

import Foundation

struct Comment: Decodable {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
}
