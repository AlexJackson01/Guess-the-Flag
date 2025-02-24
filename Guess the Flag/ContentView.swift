//
//  ContentView.swift
//  Guess the Flag
//
//  Created by Alex Jackson on 24/02/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Hello")
            Text("World!")
            
            Button {
                showingAlert = true
            } label: {
                Label("Edit", systemImage: "pencil")
                    .padding()
            }
                .buttonStyle(.borderedProminent)
                .tint(.green)
            
            Image(systemName: "pencil")
                .foregroundStyle(.white)
                .font(.largeTitle)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.indigo.gradient)

        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            
            Text("Content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
            
        }
        .ignoresSafeArea()
        .alert("Important message", isPresented: $showingAlert) {
            Button("Delete", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Read")
        }
        
        LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
        
        AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
        
    }
}

#Preview {
    ContentView()
}
