//
//  MarketDataService.swift
//  SwiftfulCrypto
//
//  Created by Francesco Monaco on 19/03/22.
//

import Foundation
import Combine

class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getData()
    }
    
    private func getData() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global")
        else {return}
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder()) // DECODE INTO COINMODEL
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedGlobalData in
                self?.marketData = returnedGlobalData.data //.DATA SO, THE MARKETDATAMODEL
                self?.marketDataSubscription?.cancel()
            })
    }
}

