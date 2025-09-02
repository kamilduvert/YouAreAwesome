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
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeInOut(duration: 0.15), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            Spacer()
            
            HStack {
                Button("Press Me!") {
                    let messages = ["You Are Awesome!",
                                    "I am so glad that you came to my life and I would like this to be forever",
                                    "You Are Great!",
                                    "Fabulous? That's You!",
                                    "You Are Fantastic!",
                                    "Excellent Work!",
                                    "You Make Me Smile!",
                                    "When the Genius Bar Needs Help, They Call You!"]
                    
                    message = messages[Int.random(in: 0...messages.count-1)]
                    imageName = "image\(Int.random(in:0...9))"
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
