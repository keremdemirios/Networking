//
//  File.swift
//  
//
//  Created by Kerem Demir on 13.09.2024.
//

import Foundation
@testable import Networking

struct TestURLRequestable: URLRequestable {
    var baseURL: String
    var method: HTTPMethod
    var path: String
    var parameters: Encodable?
    var headers: [String: String]?
}

