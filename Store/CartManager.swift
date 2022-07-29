//
//  CartManager.swift
//  Store
//
//  Created by Arwa Alzahrani on 30/12/1443 AH.
//

import Foundation


class CartManager : ObservableObject {
    
    @Published private(set) var products : [Product] = []
    @Published private(set) var total : Int = 0
    
    
    func AddToCart( product : Product) {
        
        products.append(product)
        total += product.ProductPrice
        
    }
    
    
    func removeFromCart ( product : Product) {
        
        products = products.filter{ $0.id != product.id}
        total -= product.ProductPrice
        
        
    }
    
    func addColorToCart(product : Product) {
        products.append(product)
        
        
    }
    
    
}
