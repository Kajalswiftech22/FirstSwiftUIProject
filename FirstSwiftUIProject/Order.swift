//
//  Order.swift
//  FirstSwiftUIProject
//
//  Created by intern on 9/27/23.
//

import SwiftUI

class Order: ObservableObject {
    @Published var items = [MenuItem]()
    
    var total: Int {
        if items.count > 0 {
            return items.reduce(0) { $0 + $1.price }
        } else {
            return 0
        }
    }

    func add(item: MenuItem) {
        items.append(item)
    }
}
