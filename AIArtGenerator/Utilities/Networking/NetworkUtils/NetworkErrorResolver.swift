//
//  NetworkErrorResolver.swift
//  AIArtGenerator
//


import Foundation

class NetworkErrorResolver {
    
    static func resolveError(forStatusCode statusCode: Int) -> NetworkError? {
        switch statusCode {
        case 200...299:
            return nil
        case 400:
            return .badRequest
        case 401:
            return .unauthorized
        case 403:
            return .forbidden
        case 404:
            return .notFound
        case 500:
            return .internalServerError
        default:
            return .statusCode(statusCode)
        }
    }
}

enum NetworkError: Error {
    case noInternet
    case invalidURL
    case invalidResponse
    case badRequest
    case unauthorized
    case forbidden
    case notFound
    case internalServerError
    case statusCode(Int)
    case noData
    case decodingError(Error)
    case customError(String)
    
    var localizedDescription: String {
        switch self {
        case .noInternet:
            return "No Internet Connection"
        case .invalidURL:
            return "Invalid URL"
        case .invalidResponse:
            return "Invalid Response"
        case .badRequest:
            return "Bad Request"
        case .unauthorized:
            return "Unauthorized"
        case .forbidden:
            return "Forbidden"
        case .notFound:
            return "Not Found"
        case .internalServerError:
            return "Internal Server Error"
        case .statusCode(let code):
            return "Status Code: \(code)"
        case .noData:
            return "No Data"
        case .decodingError(let error):
            return "Decoding Error: \(error.localizedDescription)"
        case .customError(let message):
            return message
        }
    }
}
