//
//  CryptoViewModel.swift
//  CryptoApp
//
//  Created by Sinan on 5.04.2023.
//

import Foundation


struct CryptoListViewModel {
    let cryptoCurrencyList : [CryptoCurrency]
    
    func numberOfRowsInSection() -> Int{
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex(index : Int) -> CryptoViewModel{
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryproCurrency: crypto)
    }
}

extension CryptoListViewModel{
/*    func numberOfRowsInSection() -> Int{
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex(index : Int) -> CryptoViewModel{
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryproCurrency: crypto)
    }
 */
}

struct CryptoViewModel {
    let cryproCurrency : CryptoCurrency
    
    var name : String {
        return self.cryproCurrency.currency
    }
    var price : String {
        return self.cryproCurrency.price
    }
}

extension CryptoViewModel{
/*
 var name : String {
     return self.cryproCurrency.currency
 }
 var price : String {
     return self.cryproCurrency.price
 }
 */
}
