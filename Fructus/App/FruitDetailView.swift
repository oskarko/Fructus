//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Oscar Rodriguez Garrucho on 24/6/21.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - Properties
    
    var fruit: Fruit
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HeaderView
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // Nutrients
                        FruitNutrientsView(fruit: fruit)
                        // Subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        // Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        // Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    } // VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } // VStack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } // ScrollView
            .edgesIgnoringSafeArea(.top)
        } // Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - Preview

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .previewDevice("iPhone 11 Pro")
    }
}
