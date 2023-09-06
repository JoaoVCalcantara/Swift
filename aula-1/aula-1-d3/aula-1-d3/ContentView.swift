//
//  ContentView.swift
//  aula-1-d3
//
//  Created by Student14 on 31/08/23.
//

import SwiftUI


struct ContentView: View {
    @State private var nome :String=""
    @State public var alert = false
    var body: some View {
//        ZStack {
//            Image("Captura de Tela 2023-01-18 às 00.12.11")
//                .padding(.leading, 500.0)
//                .opacity(0.2)
//                .imageScale(.small)
            VStack{
                
                
                Text("Bem Vindo, " + nome)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    
                
                
                TextField("Digite seu nome", text: $nome)
                    
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                VStack{
                    
                    Image("logo")
                        .resizable()
                        
                        .frame(width: 160.0, height: 100)
                        
                    Image("truck")
                        .resizable()
                        
                        .frame(width: 160.0,height: 100)
                }
                Spacer()
            
                Button("Entrar") {
                    alert = true
                        
                }
                .alert( isPresented: $alert ){
                    Alert(title: Text("Alerta!"), message:Text("Você irá o desafio da aula agora"),
                          dismissButton: .cancel(Text("Vamós la"),
                                                 action:{}))
                }
            
                
            }
            .background(
                Image("Captura de Tela 2023-01-18 às 00.12.11")
                    .opacity(0.2) . padding(.leading, 500.0))
            
            
 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
