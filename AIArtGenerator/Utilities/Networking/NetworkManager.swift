//
//  NetworkManager.swift
//  AIArtGenerator
//

import Foundation
import  AIgenerator

/// A class responsible for making network requests.
class NetworkManager {
    
    /// Sends a network request.
    ///
    /// - Parameters:
    ///   - endpoint: The API endpoint to request.
    ///   - requestType: The type of request (authenticated or non-authenticated).
    ///   - completion: A closure that is called when the request is complete.
    static func request<T: Decodable>(endpoint: EndPointType, requestType: RequestType, completion: @escaping (Result<T, NetworkError>) -> Void) {
        Loader.showLoader()
        // Determine the request interceptor based on the request type.
        let interceptor: RequestInterceptor? = (requestType == .authenticated) ? MyRequestInterceptor() : nil
        
        // Create and send the request.
        API.session.request(endpoint, interceptor: interceptor)
            .responseDecodable(of: T.self) { response in
                switch response.result {
                case .success(let result):
                    Loader.hideLoader()
                    completion(.success(result))
                case .failure(let error):
                    Loader.hideLoader()
                    self.handleStatusCode(response: response.response, error: error, completion: completion)
                }
            }
    }
    
    // Handle HTTP status code and error to determine the appropriate NetworkError
    static func handleStatusCode<T: Decodable>(response: HTTPURLResponse?, error: AFError, completion: @escaping (Result<T, NetworkError>) -> Void) {
        if let statusCode = response?.statusCode {
            if let networkError = NetworkErrorResolver.resolveError(forStatusCode: statusCode) {
                completion(.failure(networkError))
            } else {
                completion(.failure(NetworkError.customError(error.localizedDescription)))
            }
        } else {
            completion(.failure(NetworkError.customError(error.localizedDescription)))
        }
    }
}
