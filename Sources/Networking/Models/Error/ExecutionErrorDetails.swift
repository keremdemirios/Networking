//
//  File.swift
//  
//
//  Created by Kerem Demir on 13.09.2024.
//

// MARK: - ExecutionErrorDetails

public struct ExecutionErrorDetails {
    public static var generic: Self {
        .init(
            message: "Something went wrong.",
            code: 0,
            errorDescription: nil
        )
    }

    public let message: String?
    public let code: Int
    public let errorDescription: String?
}

// MARK: CustomStringConvertible

extension ExecutionErrorDetails: CustomStringConvertible {
    public var description: String {
        """
        \(Self.self):
        {
            message: \(message ?? ""),
            code: \(code),
            errorDescription: \(errorDescription ?? "")
        }
        """
    }
}


