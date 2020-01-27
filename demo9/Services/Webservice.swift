//
//  Webservice.swift
//  demo9
//
//  Created by yw c on 2020/01/26.
//  Copyright © 2020 yw c. All rights reserved.
//

import Foundation

class Webservice{
    func getAllPosts(completion: @escaping ([Post]) -> ()){
        guard let url = URL(string:
        "http://192.168.3.3:3000/user")
        else{
            fatalError("URL is not correct")
        }
        URLSession.shared.dataTask(with: url){ data, _, _ in
            let posts = try!
                JSONDecoder().decode([Post].self, from: data!)
            DispatchQueue.main.async {
                completion(posts)
            }
            
        }.resume()
    }
}
