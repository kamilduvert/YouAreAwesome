//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Kamil Duvert on 31/08/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var message: String = ""
    @State private var imageName: String = ""
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            HStack {
                Button("Press Me!") {
                    let message1 = "You Are Awesome!"
                    let message2 = "You Are Great!"
                    let imageString1 = "sun.max.fill"
                    let imageString2 = "hand.thumbsup"
                    
                    if message == message1  {
                        message = message2
                        imageName = imageString2
                    } else {
                        message = message1
                        imageName = imageString1
                    }
                }
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
