//
//  Fruit.swift
//  Fructus
//
//  Created by Oscar Rodriguez Garrucho on 23/6/21.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
