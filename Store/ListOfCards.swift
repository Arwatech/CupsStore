//
//  ListOfCards.swift
//  Store
//
//  Created by Arwa Alzahrani on 30/12/1443 AH.
//

import SwiftUI

struct ListOfCards: View {
    @StateObject var cartmanager = CartManager()
    
    var columns = [GridItem(.adaptive(minimum: 200, maximum: 180) , spacing: 24)]
    var product : Product
    var body: some View {
        
        NavigationView{
            ZStack{
               Image("Background")
                    .resizable()
                    .ignoresSafeArea(.all)
        ScrollView{
            
            LazyVGrid(columns: columns , spacing: 24){
            ForEach( ListOfProducts , id: \.id) { item in
                
                ProductCard(product: item)
                    .environmentObject(cartmanager)
            }
                
            }
            
            
        }
            }
        .navigationTitle(Text("Cups"))
        .toolbar(content: {
            NavigationLink{
     
                CartView()
                    .environmentObject(cartmanager)

            } label: {

                CartButton(numberOfproduct: cartmanager.products.count)
            }

        })
        .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct ListOfCards_Previews: PreviewProvider {
    static var previews: some View {
        ListOfCards(product: ListOfProducts[3])
    }
}
