//
//  ServiceWork.swift
//  TestProject
//
//  Created by MacBook on 11.03.2021.
//  Copyright © 2021 ZelimkhanEdilov. All rights reserved.
//

import Foundation


class ServiceWork {
    
    func loadData(urlStr: String, completion: @escaping (Result<Json, Error>) -> Void) {

        
        guard let url = URL(string: urlStr) else {return}

        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            DispatchQueue.main.async {
                if let error = error {
                    print("error")
                    completion(.failure(error))
                    return
                }
                guard let data = data else {return}
                do {
                    let json = try JSONDecoder().decode(Json.self, from: data)
                    completion(.success(json))
                    } catch let error {
                    print(error)
                        completion(.failure(error))
                }
            }
            
            
        }.resume()

    }
}
