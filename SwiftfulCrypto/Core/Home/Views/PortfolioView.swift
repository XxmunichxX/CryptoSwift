//
//  PortfolioView.swift
//  SwiftfulCrypto
//
//  Created by Francesco Monaco on 21/03/22.
//

import SwiftUI

struct PortfolioView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    
                }
            }
            .navigationTitle("Edit Portfolio")
            .toolbar {
                Button(action: {presentationMode.wrappedValue.dismiss()}) {
                    Image(systemName: "xmark")
                }
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
