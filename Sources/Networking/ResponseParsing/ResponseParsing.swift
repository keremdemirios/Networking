//
//  File.swift
//  
//
//  Created by Kerem Demir on 13.09.2024.
//

import Foundation

/// Ağ çağrılarının veri parse katmanını kapsülleyen protokol.
/// Protocol to encapsulate parsing layer of the network calls.
protocol ResponseParsing {
    // Parse işlemini tanımlayan fonksiyon
    static func parseResponse<T: Decodable>(
        data: Data,                 // Ham veri (JSON gibi)
        responseType: T.Type        // Parse edilecek model tipi
    ) -> Result<T, NetworkError>    // Başarı ya da hata sonucunu döner
}

