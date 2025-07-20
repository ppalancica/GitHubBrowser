//
//  APIError.swift
//  GitHubBrowser
//
//  Created by Pavel Palancica  on 19.07.2025.
//

import Foundation

enum APIError: String, Error {
    case invalidUsername = "Invalid URL for the provided username! Please try again."
    case unableToComplete = "Unable to complete the request! Please check your internet connection."
    case invalidResponse = "Invalid response from the server! Please try again."
    case invalidData = "The data received from the server was invalid! Please try again."
}
