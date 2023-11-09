//
//  EndPointType.swift
//  AIArtGenerator
//

import Foundation
import  AIgenerator

// Define an enumeration for different types of API endpoints
enum EndPointType {
    
    // MARK: - EndPointTypes
    
    // Define an endpoint for retrieving popular movies, taking a `PopularRequest` as a parameter
    case popular(PopluarRequest)
}

extension EndPointType: TargetType {
    
    // MARK: - baseURL
    
    // Define the base URL for all endpoints based on the current environment
    var baseURL: String {
        return Configuration.environment.baseUrl
    }

    // MARK: - HTTPMethod
    
    // Specify the HTTP method for each endpoint
    var method: HTTPMethod {
        switch self {
        case .popular:
            return .get
        }
    }

    // MARK: - Path
    
    // Specify the relative path for each endpoint
    var path: String {
        switch self {
        case .popular:
            return "movie/popular"
        }
    }

    // MARK: - Parameters
    
    /// - Returns: A `RequestParams` value indicating whether to use query or body parameters.
    ///   - `.query(request)`: If the associated value requires query parameters.
    ///   - `.body(request)`: If the associated value requires body parameters.
    var parameters: RequestParams {
        switch self {
        case .popular(let request):
            return .query(request)
        }
    }
}
