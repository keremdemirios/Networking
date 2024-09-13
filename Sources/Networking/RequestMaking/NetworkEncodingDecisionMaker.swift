//
//  File 2.swift
//  
//
//  Created by Kerem Demir on 13.09.2024.
//

import Foundation

enum NetworkEncodingDecisionMaker {
    static func encodingType(for method: HTTPMethod) -> NetworkEncoding {
        switch method {
        case .get, .delete:
            return .urlEncoding
        case .post, .put, .patch:
            return .jsonEncoding
        }
    }
}

