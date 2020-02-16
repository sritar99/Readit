//
//  PostData.swift
//  Readit
//
//  Created by Sri Harsha on 16/02/20.
//  Copyright © 2020 Sri Harsha. All rights reserved.
//

import Foundation

struct Results: Decodable{
    let hits: [Post]
}

struct Post: Decodable,Identifiable{
    var id: String{
        return objectID
    }
    let objectID: String
    let points: Int
    let url: String?
    let title: String
}
