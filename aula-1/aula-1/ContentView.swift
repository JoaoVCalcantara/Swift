//
//  ContentView.swift
//  aula-1
//
//  Created by Student14 on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image( "Captura de Tela 2023-01-18 às 00.12.11")
                .resizable()
                
                .padding(-4.0)
                .scaledToFit()
                .imageScale(.small)
                
                
            Text("HackTruck")
                .font(.largeTitle)
                
                .foregroundColor(Color.blue)
                
            HStack{
                Text("Maker")
                    .font(.title2)
                    .foregroundColor(Color.yellow)
                Text("Space")
                    .font(.title2)
                    .foregroundColor(Color.red)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
