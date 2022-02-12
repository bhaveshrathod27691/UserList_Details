//
//  NetworkManagerClass.swift
//  GitHubLinkDemo
//
//  Created by BhaveshLab Dev on 31/01/22.
//

import Foundation


class NetworkManagerClass {
    
    static let shared = NetworkManagerClass()

    func fetchGenericData<T: Decodable>(urlString: String, completion: @escaping ([T]) -> ()) {
        let url = URL(string: urlString)
        URLSession.shared.dataTask(with: url!) { (data, resp, err) in
            if let err = err {
                print("Failed to fetch data:", err)
                return
            }
            
            guard let data = data else { return }
            
            do {
                let obj = try JSONDecoder().decode([T].self, from: data)
                completion(obj)
            } catch let jsonErr {
                print("Failed to decode json:", jsonErr)
            }
        }.resume()
    }
    
    func fetchGenericDataWithObject<T: Decodable>(urlString: String, completion: @escaping (T) -> ()) {
        let url = URL(string: urlString)
        URLSession.shared.dataTask(with: url!) { (data, resp, err) in
            if let err = err {
                print("Failed to fetch data:", err)
                return
            }
            
            guard let data = data else { return }
            
            do {
                let obj = try JSONDecoder().decode(T.self, from: data)
                completion(obj)
            } catch let jsonErr {
                print("Failed to decode json:", jsonErr)
            }
        }.resume()
    }
}



