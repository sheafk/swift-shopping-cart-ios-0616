//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Shea Furey-King on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Cart {
    
    var items = [Item]()
    
//    init(items: [Item]) {
//    self.items = items
//        }
    
    func totalPriceInCents() -> Int {
        
        var total = 0
        for item in items {
            total += item.priceInCents
        }
        
        return total
    }
    
    func addItem(newItem: Item) {
        
        items.append(newItem)
    }
    
    func removeItem(returnThisItem: Item) {
        
        if let index = items.indexOf(returnThisItem) {
            
            items.removeAtIndex(index)
        }
    }
    
    func itemsWithName(itemName: String) -> [Item] {
        
        var hasName = [Item]()
        
        for item in items {
            
            if item.name == itemName {
                hasName.append(item)
            }
        }
        return hasName
    }
    
    func itemsWithMinimumPriceInCents(num: Int) -> [Item] {
        
        var minPrice = [Item]()
        for item in items {
            if item.priceInCents >= num {
                
                minPrice.append(item)
                
            }
        }
        return minPrice
    }
    
    func itemsWithMaximumPriceInCents(num: Int)-> [Item] {
        
        var maxPrice = [Item]()
        for item in items {
            if item.priceInCents <= num {
                
                maxPrice.append(item)
                
            }
        }
        return maxPrice
    }
    
    
}
