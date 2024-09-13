//
//  File.swift
//  
//
//  Created by Kerem Demir on 13.09.2024.
//

import Foundation
@testable import Networking

enum TestURLRequestableFactory {
    static func makeURLRequestable(
        httpMethod: HTTPMethod,
        parameters: TestModel?,
        headers: [String: String] = [:]
    ) -> TestURLRequestable {
        TestURLRequestable(
            baseURL: "www.test.com",
            method: httpMethod,
            path: "test_resources",
            parameters: parameters,
            headers: headers
        )
    }
}

