//
//  File.swift
//  
//
//  Created by Kerem Demir on 13.09.2024.
//

import Foundation

extension URLResponse {
    var responseStatus: URLResponseStatus {
        guard let httpResponse = self as? HTTPURLResponse else {
            return .failure(.noHTTPResponse(.generic))
        }

        switch httpResponse.statusCode {
        case 200...299:
            return .success
        case 400...499:
            return .failure(NetworkError.clientError(.generic))
        case 500...:
            return .failure(NetworkError.serverError(.generic))
        default:
            return .failure(NetworkError.unknown(.generic))
        }
    }
}

