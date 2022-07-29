//
//  ProductModel.swift
//  Store
//
//  Created by Arwa Alzahrani on 30/12/1443 AH.
//

import Foundation

struct Product : Identifiable{
    
    var id = UUID()
    var ImgName : String
    var ProductTitle : String
    var ProductColor1 : String
    var ProductColor2 : String
    var ProductPrice : Int
}


var ListOfProducts = [Product(ImgName: "CUP1", ProductTitle: "Ceramic cup", ProductColor1: "yellowCup", ProductColor2: "greenCup" ,ProductPrice: 45 ),
                      Product(ImgName: "CUP2", ProductTitle: "Pottery cup", ProductColor1: "greenCup", ProductColor2: "whiteCup" , ProductPrice: 65 ),
                      Product(ImgName: "CUP3", ProductTitle: "Funny animals cups", ProductColor1: "whiteCup",ProductColor2: "yellowCup" , ProductPrice: 55 ),
                      Product(ImgName: "CUP4", ProductTitle: "Set of 2 cups", ProductColor1: "lightblueCup",ProductColor2: "greenCup" , ProductPrice: 85),
                      Product(ImgName: "CUP5", ProductTitle: "Pottery cup", ProductColor1: "redCup",ProductColor2: "yellowCup" , ProductPrice: 70),
                      Product(ImgName: "CUP6", ProductTitle: "Ceramic cup", ProductColor1: "whiteCup", ProductColor2: "redCup" ,ProductPrice: 30),
                      Product(ImgName: "CUP7", ProductTitle: "Classic cup", ProductColor1: "whiteCup",ProductColor2: "lightblueCup" , ProductPrice: 40),
                      Product(ImgName: "CUP8", ProductTitle: "Set of 3 glass cups", ProductColor1: "w",ProductColor2: "w" , ProductPrice: 135),
                      Product(ImgName: "CUP9", ProductTitle: "Pottery cup", ProductColor1: "g", ProductColor2: "gg" , ProductPrice: 55),
                      Product(ImgName: "CUP10", ProductTitle: "Pottery cup", ProductColor1: "gg",ProductColor2: "g" , ProductPrice: 65 )]
