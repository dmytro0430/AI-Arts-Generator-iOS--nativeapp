//
//  NetworkConfig.swift
//  AIArtGenerator
//


import Foundation
import  AIgenerator

// Define a class for making API requests
class API {
    
    // Create a static  AIgenerator session with custom event monitors
    static let session: Session = {
        let configuration = URLSessionConfiguration.af.default
        let apiLogger = APIEventLogger()
        return Session(configuration: configuration, eventMonitors: [apiLogger])
    }()
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

// Define a struct for API configuration
struct Configuration {
    // Get the current environment from the app's info.plist
    static var environment: Environment {
        get {
            if let configuration = Bundle.main.object(forInfoDictionaryKey: "APIConfiguraiton") as? String {
                return Environment(rawValue: configuration) ?? .debug
            } else {
                return .debug
            }
        }
    }
}

// Define an enum for different API environments
enum Environment: String {
    case debug
    case staging
    case release
    
    // Define the base URL for each environment
    var baseUrl: String {
        switch self {
        case .debug: return "https://api.themoviedb.org/3/"
        case .staging: return "https://api.themoviedb.org/3/"
        case .release: return "https://api.themoviedb.org/3/"
        }
    }
}

// - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

// Enum defining common HTTP header fields.
enum HTTPHeaderField: String {
    case authentication = "Authorization"  // Used for authentication token.
    case contentType = "Content-Type"      // Specifies the content type of the request.
    case acceptType = "Accept"             // Specifies the accepted response type.
}

// Enum defining content types, typically used for setting request or response content type.
enum ContentType: String {
    case json = "Application/json"  // JSON content type.
}

// Enum representing different types of network requests.
enum RequestType {
    case nonAuthenticated   // A network request without authentication.
    case authenticated      // An authenticated network request.
}
