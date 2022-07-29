//
//  ProductCard.swift
//  Store
//
//  Created by Arwa Alzahrani on 30/12/1443 AH.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartmanager : CartManager
    var product : Product
    var body: some View {
//        ScrollView{
        ZStack(alignment: .bottomTrailing){
        ZStack(alignment: .bottom){
        ZStack(alignment: .top){
            Rectangle().frame(width: 170, height: 265, alignment: .center)
                .foregroundColor(Color("CardBackground"))
                .border(Color("CardBackgroundStroke"), width: 0.5)
                .cornerRadius(6)
            
            Image(product.ImgName)
                .resizable()
                .frame(width: 170, height: 196, alignment: .center)
                .cornerRadius(6)
                .aspectRatio(contentMode: .fill)
                .shadow(color: Color("CardBackgroundStroke"), radius: 2, x: 0, y: 1)
            
        }
            
            VStack{
                Text(product.ProductTitle)
                    .font(.system(size: 16, weight: .medium, design: .default))
                    .foregroundColor(Color("TitleColor"))
                    .padding(.all , -2)
                
                HStack{
                Text("Colors :")
                        .font(.system(size: 10, weight: .regular, design: .default))
                        .padding(.leading , 10)
                    
                    Button {
                       
                    } label: {
                    Circle().frame(width: 12, height: 12, alignment: .center)
                            .foregroundColor(Color("\(product.ProductColor1)"))
                        .shadow(color: Color("CardBackgroundStroke"), radius: 2, x: 0, y: 1)
                    }
                    
                    Button {
//                        cartmanager.addColorToCart(product: product)
                    } label: {
                    Circle().frame(width: 12, height: 12, alignment: .center)
                            .foregroundColor(Color("\(product.ProductColor2)"))
                        .shadow(color: Color("CardBackgroundStroke"), radius: 2, x: 0, y: 1)
                    }
//                Text(product.ProductColor)
                    
                    Spacer()
                    
                }.padding(.all , -2)
                
                HStack{
                Text("Price :")
                        .font(.system(size: 10, weight: .regular, design: .default))
                        .padding(.leading , 10)
               
                                    Text("\(product.ProductPrice) SR")
                        .font(.system(size: 12, weight: .regular, design: .default))
                        .foregroundColor(.red)
                        .fontWeight(.bold)
          
            Spacer()
          
                        
                  
                }.padding(.all , -2)

                
                
                
            }.frame(width: 170, height: 73)
                
            
        }.frame(width: 170, height: 265, alignment: .center)
            
            Button {
                cartmanager.AddToCart(product: product)
            } label: {
                ZStack{
                Rectangle()
                      .frame(width: 63, height: 17)
                      .foregroundColor(Color("ButtonColor"))
                      .cornerRadius(6)
                  
                      Text("Add to cart")
                          .font(.system(size: 10, weight: .regular, design: .default))
                          .foregroundColor(.white)
                          .shadow(color: Color("CardBackgroundStroke"), radius: 0.4, x: 0, y: 0)
                }.padding(.all , 11)
            }


        }
            
//        .navigationTitle("Cups")
//        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: ListOfProducts[0])
            .environmentObject(CartManager())
    }
}
