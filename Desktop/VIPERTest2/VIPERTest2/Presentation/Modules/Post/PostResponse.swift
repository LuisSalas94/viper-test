//
//  PostResponse.swift
//  VIPERTest2
//
//  Created by Luis Fernando Salas Gave on 17/01/23.
//

struct PostResponse: Decodable {
    let data: [Post]
}

struct Post: Decodable {
    let id: Int
    let title: String
    let body: String
}


