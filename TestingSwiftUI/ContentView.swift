//
//  ContentView.swift
//  TestingSwiftUI
//
//  Created by Lucy on 01/09/22.
//

import SwiftUI

struct ContentView: View {
    @State var inputNumber: String
    
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        VStack{
            Text("Covert USD To IDR")
                .font(.headline)
            Form{
                HStack{
                    Text("$")
                    TextField("Enter Nominal", text: $inputNumber)
                }
                Text("Result: \(viewModel.converterNumberText)")
            }
              
            Button("Convert To Rupiah"){
                viewModel.convertMoney(inputNumberText: inputNumber)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(inputNumber: "")
            .environmentObject(ViewModel())
    }
}
