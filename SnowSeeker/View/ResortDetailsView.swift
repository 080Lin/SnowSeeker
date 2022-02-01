//
//  ResortDetailsView.swift
//  SnowSeeker
//
//  Created by Максим Нуждин on 31.01.2022.
//

import SwiftUI

struct ResortDetailsView: View {
    
    let resort: Resort
    
    var size: String {
        ["Small", "Average", "Large"][resort.size - 1]
    }
    var body: some View {
        Group {
            
            VStack {
                Text("Size")
                    .font(.caption.bold())
                Text("\(size)")
                    .font(.title3)
            }
            
            VStack {
                Text("Price")
                    .font(.caption.bold())
                Text(price)
                    .font(.title3)
            }
        }.frame(maxWidth: .infinity)
    }
    
    var price: String {
        
        String(repeating: "$", count: resort.price)
    }
}

struct ResortDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ResortDetailsView(resort: Resort.example)
    }
}
