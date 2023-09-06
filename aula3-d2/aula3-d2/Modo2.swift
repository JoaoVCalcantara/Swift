//
//  Modo2.swift
//  aula3-d2
//
//  Created by Student14 on 04/09/23.
//

import SwiftUI

struct Modo2: View {
    @State var nome : String = ""
    var body: some View {
        NavigationStack{
            VStack{
                TextField("Digite seu nome",text : $nome )
                
                Text("Estamos pergorrendo um caminho " + nome)
                
                NavigationLink(destination: Modo2p(nome:nome)){
                    Text("Acessar Tela")
                }
                
            }
        }
    }
}

struct Modo2_Previews: PreviewProvider {
    static var previews: some View {
        Modo2()
    }
}
