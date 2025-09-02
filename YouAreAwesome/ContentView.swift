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
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            HStack {
                Button("Press Me!") {
                    let messages = ["You Are Awesome!",
                                    "You Are Great!",
                                    "Fabulous? That's You!",
                                    "You Are Fantastic!",
                                    "Excellent Work!",
                                    "You Make Me Smile!",
                                    "When the Genius Bar Needs Help, They Call You!"]
                    
                    message = messages[messageNumber]
                    messageNumber += 1
                    imageName = "image\(imageNumber)"
                    imageNumber += 1
                    
                    if imageNumber > 9 {
                        imageNumber = 0
                    }
                    
                    if messageNumber == messages.count {
                        messageNumber = 0
                    }
                }
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
