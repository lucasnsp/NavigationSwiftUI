//
//  DetailView.swift
//  NavigationStack
//
//  Created by Lucas Neves dos santos pompeu on 06/11/23.
//

import SwiftUI

struct Detail: Hashable {
    var name: String
    var color: Color
}

struct DetailView: View {
    
    var model: Detail
    
    var body: some View {
        ZStack {
            model.color
                .ignoresSafeArea()
            Text(model.name)
                .navigationTitle("Sou a tela 01")
        }
    }
}

#Preview {
    NavigationStack {
        DetailView(model: Detail(name: "Chave demais", color: .blue))
    }
}
