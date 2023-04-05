//
//  CryptoCurrency.swift
//  CryptoApp
//
//  Created by Sinan on 5.04.2023.
//

import Foundation
// api den veri çekerken düzgün bir format ise Decodable veri gönderirken Encodable Kullanılır

struct CryptoCurrency : Decodable {
    let currency : String
    let price : String
}
