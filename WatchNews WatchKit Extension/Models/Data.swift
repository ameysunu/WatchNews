//
//  Data.swift
//  WatchNews WatchKit Extension
//
//  Created by Amey Sunu on 10/06/21.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    let author: String
    let _tags: [String]
}
