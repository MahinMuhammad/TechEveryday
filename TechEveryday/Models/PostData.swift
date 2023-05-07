//
//  PostData.swift
//  TechEveryday
//
//  Created by Md. Mahinur Rahman on 5/7/23.
//

import Foundation

struct Result:Decodable{
    let hits:[Post]
}

struct Post:Decodable, Identifiable{
    var id:String{
        return objectID
    }
    let objectID:String
    let points:Int
    let title:String
    let url:String?
}
