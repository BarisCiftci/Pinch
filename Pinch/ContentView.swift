//
//  ContentView.swift
//  Pinch
//
//  Created by Baris Ciftci on 25/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: PROPERTIES
    
    // MARK: FUNCTION
    
    // MARK: CONTENT
    
    var body: some View {
        VStack {
            Image(systemName: "arrow.up")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

// MARK: PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14")
            .preferredColorScheme(.dark)
    }
}
