//
//  NetworkManager.swift
//  GitHubBrowser
//
//  Created by Pavel Palancica  on 19.07.2025.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    private let baseUrl = "https://api.github.com/users/"
    
    private init() {}
    
    func getFollowers(for username: String,
                      page: Int,
                      completion: @escaping ([Follower]?, String?) -> Void) {
        
        let endpoint = baseUrl + "\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completion(nil, "Invalid URL! Please try again.")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else {
                completion(nil, "Unable to complete the request! Please check your internet connection.")
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(nil, "Invalid response from the server! Please try again.")
                return
            }
            
            guard let data else {
                completion(nil, "The data received from the server was invalid! Please try again.")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                
                let followers = try decoder.decode([Follower].self, from: data)
                completion(followers, nil)
            } catch {
                completion(nil, "The data received from the server was invalid! Please try again.")
            }
        }
        
        task.resume()
    }
}
