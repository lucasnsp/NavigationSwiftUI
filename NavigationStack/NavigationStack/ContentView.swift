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
                NavigationLink("ir para tela 1", value: Detail(name: "Fulano", color: .orange))
                NavigationLink("ir para tela 2", value: Detail(name: "manda mandando", color: .purple))
                
            }
            .navigationDestination(for: Detail.self) { value in
                DetailView(model: value)
            }
            .navigationDestination(for: Detail.self) { value in
                ZStack {
                    DetailView(model: value)
                }
                .ignoresSafeArea()
            }
            .navigationTitle("Olá mundo")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ContentView()
}
