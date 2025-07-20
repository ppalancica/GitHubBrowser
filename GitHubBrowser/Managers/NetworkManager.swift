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
                      completion: @escaping (Result<[Follower], APIError>) -> Void) {
        
        let endpoint = baseUrl + "\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completion(.failure(.invalidUsername))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else {
                completion(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
            
            guard let data else {
                completion(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                
                let followers = try decoder.decode([Follower].self, from: data)
                completion(.success(followers))
            } catch {
                completion(.failure(.invalidData))
            }
        }
        
        task.resume()
    }
}
