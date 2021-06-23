//
//  OnboardingView.swift
//  Fructus
//
//  Created by Oscar Rodriguez Garrucho on 23/6/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    
    
    // MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            } // For loop
        } // Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
