//
//  CartRow.swift
//  Store
//
//  Created by Arwa Alzahrani on 30/12/1443 AH.
//

import SwiftUI

struct CartRow: View {
    @EnvironmentObject var cartmanager : CartManager
    var product : Product
    var body: some View {
        
        
        HStack{
            
            Image(product.ImgName)
                .resizable()
                .frame(width: 80, height: 100, alignment: .center)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(6)
            
            VStack(alignment: .leading, spacing: 3){
                Text(product.ProductTitle)
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(Color("TitleColor"))
                
                HStack{
                Text("Color:")
                    .font(.system(size: 14, weight: .medium, design: .default))
                    Circle().frame(width: 12, height: 12, alignment: .center)
                            .foregroundColor(Color("\(product.ProductColor1)"))
                        .shadow(color: Color("CardBackgroundStroke"), radius: 2, x: 0, y: 1)
                
                }
                Spacer()
                
                Text("\(product.ProductPrice) SR")
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(.blue)
                
            }.frame(width: .infinity, height: 90, alignment: .center)
                .padding()
            
            Spacer()
            
            Button {
                cartmanager.removeFromCart(product: product)
            } label: {
                Image(systemName: "trash")
                    .resizable()
                    .frame(width: 23 , height: 23, alignment: .center)
                    .foregroundColor(.red)
                
            }

  
        }.padding()
            .border(.gray, width: 0.3)
    }
}

struct CartRow_Previews: PreviewProvider {
    static var previews: some View {
        CartRow(product: ListOfProducts[2])
            .environmentObject(CartManager())
    }
}
