//
//  ContentView.swift
//  NavigationStack
//
//  Created by Lucas Neves dos santos pompeu on 06/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // NavigationView
//        NavigationView {
//            VStack(spacing: 10.0) {
//                NavigationLink("Ir para tela 1") {
//                    Text("Sou a tela 1")
//                }
//                
//                NavigationLink("Ir para tela 2") {
//                    Text("Sou a tela 2")
//                }
//            }
//            .padding()
//        }
        // NavigationStack
//        NavigationStack {
//            VStack(spacing: 10.0) {
//                NavigationLink("Ir para tela 1") {
//                    Text("Sou a tela 1")
//                }
//                
//                NavigationLink("Ir para tela 2") {
//                    Text("Sou a tela 2")
//                }
//            }
//            .padding()
//        }
        // NavigationStack Destination
        NavigationStack {
            VStack(spacing: 10.0) {
                NavigationLink("ir para tela 1", value: "Sou a tela 1")
                NavigationLink("ir para tela 2", value: Color.red)
                
            }
            .navigationDestination(for: String.self) { value in
                Text(value)
            }
            .navigationDestination(for: Color.self) { value in
                ZStack {
                    value
                }
                .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    ContentView()
}
