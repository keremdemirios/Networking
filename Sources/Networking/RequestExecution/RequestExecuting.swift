//
//  File.swift
//  
//
//  Created by Kerem Demir on 13.09.2024.
//

import Foundation

protocol RequestExecuting {
    /// URL Session of the request to be executed
    var session: URLSession { get }

    /// Executes regular request with given URLRequest and returns success model or an error
    func execute(_ request: URLRequest) async -> Result<RequestSuccessModel, Error>
}

