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
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            
            Spacer()
            
            HStack {
                Button("Press Me!") {
                    let message1 = "You Are Awesome!"
                    let message2 = "You Are Great!"
                    
                    message = ( message == message1 ? message2 : message1 )
                    imageName = ( imageName == "image0" ? "image1" : "image0" )
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
