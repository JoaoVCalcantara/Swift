//
//  ContentView.swift
//  aula3-d2
//
//  Created by Student14 on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var sheet = false
    
    var body: some View {
        NavigationStack{
            VStack {
                NavigationLink(destination: Modo1()){
                    Text("Modo 1")
                }
                NavigationLink(destination: Modo2()){
                    Text("Modo 2")
                }
                
                Button("Modo 3"){
                    sheet = true
                }
                    .sheet(isPresented:$sheet ){
                        Text("Informacions")
                        Text("Informacions")
                        Text("Informacions")
                        Text("Informacions")
                    }
                
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
