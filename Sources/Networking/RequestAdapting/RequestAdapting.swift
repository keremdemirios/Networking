//
//  File.swift
//  
//
//  Created by Kerem Demir on 13.09.2024.
//

import Foundation

public protocol RequestAdapting: AnyObject {
    func adapt(request: URLRequest) -> URLRequest
}

