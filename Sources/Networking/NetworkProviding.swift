//
//  File.swift
//  
//
//  Created by Kerem Demir on 13.09.2024.
//

import Foundation

public protocol NetworkProviding {
    /// A method to make a network request
    /// - Parameters:
    ///    - requestable: A model conforming to `URLRequestable` to define the details of a request
    ///    - responseType: An expected type to parse the result of the request for
    /// - Returns: A `Swift` `Result` type with generic Decodable `T` type for the success case,
    /// or NetworkError for the failure.
    /// - Note: You must switch to `@MainActor` from your calling Task to update UI components.
    func request<T: Decodable, V: URLRequestable>(
        requestable: V,
        responseType: T.Type
    ) async -> Result<T, NetworkError>
}

