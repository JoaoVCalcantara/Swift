//
//  ContentView.swift
//  aula-1-d2
//
//  Created by Student14 on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image( "Captura de Tela 2023-01-18 às 00.12.11")
                .resizable()
                .padding(.horizontal, -54.0)
                .scaledToFit()
            ZStack{
                Image("Captura de Tela 2023-01-18 às 00.12.11")
                    .resizable()
                    
                
                    
                    
                    
                    .padding(.bottom)
                    .frame(width: 256.0, height: 259.0)
                    .cornerRadius(300)
                    
                
                Text("HackTruck")
                    .font(.largeTitle)
                    
                    .foregroundColor(Color.blue)
                    .padding(.bottom, 200.0)
                    
                    
                
            }
            ZStack{
                
                
                
                Rectangle()
                    
                    .padding(.horizontal, 39.0)
                    .padding(.bottom, -53.0)

                    
                HStack{
                    Text("Maker")
                        .font(.title)
                        .foregroundColor(Color.yellow)
                        .padding(.bottom, 50.0)
                    Text("Space")
                        .font(.title)
                        .foregroundColor(Color.red)
                        .padding(.bottom, 50.0)
                }
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
