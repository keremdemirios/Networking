//
//  File 4.swift
//  
//
//  Created by Kerem Demir on 13.09.2024.
//

import Foundation

public protocol NetworkURLRequestMaking {
    func makeURLRequest<T: URLRequestable>(with requestable: T) throws -> URLRequest
}

