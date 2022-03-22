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
                        .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 10) {
                            ForEach(vm.allCoins) { coin in
                                CoinLogoView(coin: coin)
                                    .frame(width: 70)
                                    .padding(4)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.theme.green, lineWidth: 1)
                                    )
                            }
                        }
                        .padding(.leading)
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
