//
//  NetworkManager.swift
//  TechEveryday
//
//  Created by Md. Mahinur Rahman on 5/7/23.
//

import Foundation

class NetworkManager: ObservableObject{
    
    @Published var posts = [Post]()
    
    func fetchData(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if let e = error{
                    print("Data fetching failed with error: \(e)")
                }else{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
                            let results = try decoder.decode(Result.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        }catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
