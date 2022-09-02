//
//  ViewModel.swift
//  TestingSwiftUI
//
//  Created by Lucy on 01/09/22.
//

import Foundation
import UIKit

class ViewModel: ObservableObject{
    private let converter = Converters()
    
    @Published var converterNumberText = ""
    
    func convertMoney(inputNumberText: String){
        self.converterNumberText = converter.convertUsdToRupiah(usd: inputNumberText)
        self.hideKeyboard()
    }
    
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
