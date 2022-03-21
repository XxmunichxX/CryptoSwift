//
//  UIApplication.swift
//  SwiftfulCrypto
//
//  Created by Francesco Monaco on 17/03/22.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
