//
//  Modo2p.swift
//  aula3-d2
//
//  Created by Student14 on 04/09/23.
//

import SwiftUI

struct Modo2p: View {
    var nome :String = ""
    var body: some View {
        
        Text("Volte! \(nome)")
    }
}

struct Modo2p_Previews: PreviewProvider {
    static var previews: some View {
        Modo2p(nome:"")
    }
}
