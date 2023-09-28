//
//  Menu.swift
//  FirstSwiftUIProject
//
//  Created by intern on 9/26/23.
//

import SwiftUI

struct MenuSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [MenuItem]
}

struct MenuItem: Codable, Hashable, Identifiable {
    var id: UUID
    var name: String
    var photoCredit: String
    var price: Int
    var restrictions: [String]
    var description: String 
    
    var mainImage: String {
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }
    
    var thumbnailImage: String {
        "\(mainImage)-thumb"
    }
    
    static let example = MenuItem(id: UUID(), name: "", photoCredit: "Joseph Gonzalez", price: 200, restrictions: [""], description: "")
}
