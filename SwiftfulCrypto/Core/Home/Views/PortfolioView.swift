//
//  PortfolioView.swift
//  SwiftfulCrypto
//
//  Created by Francesco Monaco on 21/03/22.
//

import SwiftUI

struct PortfolioView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    SearchBarView(searchText: $vm.searchText)
                    
                    ScrollView(.horizontal, showsIndicators: true) {
                        LazyHStack(spacing: 10) {
                            ForEach(vm.allCoins) { coin in
                                Text(coin.symbol.uppercased())
                            }
                        }
                    }
                }
            }
            .navigationTitle("Edit Portfolio")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                XMarkButton()
            }
        }
    }
}


struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .environmentObject(dev.homeVM)
    }
}
