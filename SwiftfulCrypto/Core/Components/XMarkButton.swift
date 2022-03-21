//
//  XMarkButton.swift
//  SwiftfulCrypto
//
//  Created by Francesco Monaco on 21/03/22.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {presentationMode.wrappedValue.dismiss()}) {
            Image(systemName: "xmark")
        }
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
