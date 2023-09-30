//
//  ContentView.swift
//  Instafilter
//
//  Created by Анна Перехрест  on 2023/09/30.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct ContentView: View {
    @State private var image: Image?
    @State private var showingImagePicker = false
    
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
            
            Button("Select Image") {
                showingImagePicker = true
            }
        }
        .padding()
        .sheet(isPresented: $showingImagePicker) {
            ImagePicker()
        }
    }
}


#Preview {
    ContentView()
}
