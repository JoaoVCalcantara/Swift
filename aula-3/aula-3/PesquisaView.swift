//
//  PesquisaView.swift
//  aula-3
//
//  Created by Student14 on 04/09/23.
//

import SwiftUI

struct PesquisaView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 300.0, height: 400.0)
                .foregroundColor(.blue)
            
            Text("Hello, HackTruck!")
                .foregroundColor(.white)
                
        }
    }
}

struct PesquisaView_Previews: PreviewProvider {
    static var previews: some View {
        PesquisaView()
    }
}
