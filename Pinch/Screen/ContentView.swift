//
//  ContentView.swift
//  Pinch
//
//  Created by Baris Ciftci on 25/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: PROPERTIES
    @State private var isAnimating :  Bool = false
    @State private var imageScale :  CGFloat = 1
    
    // MARK: FUNCTION
    
    // MARK: CONTENT
    
    var body: some View {
        VStack {
            
            NavigationView{
                ZStack {
                    // MARK: PAGE IMAGE
                    Image("magazine-front-cover")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .padding()
                        .shadow(color: .black.opacity(0.2), radius: 24, x: 2, y: 2)
                        .opacity(isAnimating ? 1: 0)
                        .scaleEffect(imageScale)
                    //MARK: - 1. TAP GESTURE
                        .onTapGesture(count: 2, perform: {
                            if imageScale == 1 {
                                withAnimation(.spring()) {
                                    imageScale = 5
                                }
                            } else {
                                withAnimation(.spring()) {
                                    imageScale = 1
                                }
                            }
                        })
                }//: ZSTACK
                .navigationTitle("Pinch & Zoom")
                .navigationBarTitleDisplayMode(.inline)
                .onAppear(perform: {
                    withAnimation(.linear(duration: 0)) {
                        isAnimating = true
                    }
                })
            }//: NAVIGATION
            .navigationViewStyle(.stack)
            
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
