//
//  WelcomeView.swift
//  SnowSeeker
//
//  Created by Максим Нуждин on 31.01.2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Text("Welcome to my app")
                .font(.largeTitle)
            
            Text("Please select the resort from the left menu")
            Text("Swipe from the left edge to show it")
                .foregroundColor(.secondary)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
