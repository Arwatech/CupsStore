//
//  CartView.swift
//  Store
//
//  Created by Arwa Alzahrani on 30/12/1443 AH.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartmanager : CartManager

    var body: some View {
        ZStack{
           Image("Background")
                .resizable()
                .ignoresSafeArea(.all)
        ScrollView{
            
            if cartmanager.products.count > 0 {
                
                ForEach(cartmanager.products , id: \.id) { item in
                    CartRow(product: item)
                }
                
                HStack{
                    
                    Text("Your cart total is :")
                    Spacer()
                    
                    Text("\(cartmanager.total).00")
                        .bold()
                }.padding()
                
            }else {
                
                Text("your cart is empty!")
            }
            
  
            
            
            
              
        }
        
        
        .navigationTitle("My cart")
        .padding(.top)
    }
        
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
