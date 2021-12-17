//
//  PostData.swift
//  H4X0R News
//
//  Created by JUNSOO PARK on 2021-12-16.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post:Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
