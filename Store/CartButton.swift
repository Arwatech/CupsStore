//
//  CartButton.swift
//  Store
//
//  Created by Arwa Alzahrani on 30/12/1443 AH.
//

import SwiftUI

struct CartButton: View {
    
    var numberOfproduct : Int
    var body: some View {
        
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .accentColor(.black)
                .padding(.top , 5)
            
            if numberOfproduct > 0 {
                
                Text("\(numberOfproduct)")
                    .font(.caption2)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.red)
                    .cornerRadius(50)
                
                
            }
            
            
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfproduct: 1)
    }
}
