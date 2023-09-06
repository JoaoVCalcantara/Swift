//
//  ContentView.swift
//  aula-3
//
//  Created by Student14 on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Homeview()
                .badge("!")
                .tabItem{
                    Label("Home", systemImage: "homekit")
                }
            PesquisaView()
                .tabItem{
                    Label("Search",systemImage:"magnifyingglass.circle")
                }
            
            ImageView()
                .badge(2)
                .tabItem{
                    Label("Image", systemImage: "doc.text.image")
                }
            
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
