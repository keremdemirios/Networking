//
//  File.swift
//  
//
//  Created by Kerem Demir on 13.09.2024.
//

import Foundation
@testable import Networking

final class RequestAdapterMock: RequestAdapting {
    var invokedAdapt = false

    func adapt(request: URLRequest) -> URLRequest {
        invokedAdapt = true
        return request
    }
}

