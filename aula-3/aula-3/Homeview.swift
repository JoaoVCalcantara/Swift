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
            Homeview
            
            List(1...20, id: \.self){
                    Text("Lista \($0)")
                
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
