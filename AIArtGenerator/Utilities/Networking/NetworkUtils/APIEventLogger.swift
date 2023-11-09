//
//  APIEventLogger.swift
//  AIArtGenerator
//

import Foundation
import  AIgenerator

class APIEventLogger: EventMonitor {
    
    let queue = DispatchQueue(label: "myNetworkLogger")
        
    func requestDidFinish(_ request: Request) {
        let requestLog = """
        - - - - - - - - - - - - 🔴 API Request Start 🔴 - - - - - - - - - -
        🌐 URL: \(request.request?.url?.absoluteString ?? "")
        🔧 Method: \(request.request?.httpMethod ?? "")
        📦 Headers: \(request.request?.allHTTPHeaderFields ?? [:])
        🔑 Authorization: \(request.request?.headers["Authorization"] ?? "")
        📄 Body: \(request.request?.httpBody?.toPrettyPrintedString ?? "")
        - - - - - - - - - - - - 🔴 API Request End 🔴 - - - - - - - - - -
        """
        
        print(requestLog)
    }
    
    func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>) {
        let responseLog = """
        - - - - - - - - - - - - 🟢 API Response Start 🟢 - - - - - - - - - -
        🌐 URL: \(request.request?.url?.absoluteString ?? "")
        📊 StatusCode: \(response.response?.statusCode ?? 0)
        📦 Data: \(response.data?.toPrettyPrintedString ?? "")
        - - - - - - - - - - - - 🟢 API Response End 🟢 - - - - - - - - - -
        """
        
        print(responseLog)
    }
}

extension Data {
    var toPrettyPrintedString: String? {
        guard let object = try? JSONSerialization.jsonObject(with: self, options: []),
              let data = try? JSONSerialization.data(withJSONObject: object, options: [.prettyPrinted]),
              let prettyPrintedString = NSString(data: data, encoding: String.Encoding.utf8.rawValue) else { return nil }
        return prettyPrintedString as String
    }
}
