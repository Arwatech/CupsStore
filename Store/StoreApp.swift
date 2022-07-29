//
//  StoreApp.swift
//  Store
//
//  Created by Arwa Alzahrani on 30/12/1443 AH.
//

import SwiftUI

@main
struct StoreApp: App {
    @EnvironmentObject var cartmanager : CartManager
    var body: some Scene {
        WindowGroup {
            ListOfCards(product: ListOfProducts[0])
                .environmentObject(CartManager())
                
        }
    }
}
