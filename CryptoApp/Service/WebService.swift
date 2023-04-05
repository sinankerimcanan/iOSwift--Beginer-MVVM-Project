//
//  WebService.swift
//  CryptoApp
//
//  Created by Sinan on 5.04.2023.
// https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json

import Foundation

class WebService {
    
    func downloadCurrencies(url : URL, completion : @escaping ([CryptoCurrency]?) -> ()){
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                
                print(error.localizedDescription)
                completion(nil)
                
            }
            else if let data = data{
                
               let cryptoList = try? JSONDecoder().decode([CryptoCurrency].self, from: data)
                print(cryptoList)
                if let cryptoList = cryptoList {
                    completion(cryptoList)
                }
            }
        }.resume()
        
        
        
    }
    
    
    
}
