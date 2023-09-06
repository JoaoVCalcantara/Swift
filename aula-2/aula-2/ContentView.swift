//
//  ContentView.swift
//  aula-2
//
//  Created by Student14 on 01/09/23.
//

import SwiftUI

struct ContentView: View {
    @State public var peso = 0.0
    @State public var altura = 0.0
    @State public var IMC = 0.0
    @State public var fImc :String = ""
    @State public var cor : Color = .gray
    var body: some View {
        VStack {
            Spacer()
            Text("Calculadora de IMC")
                .font(.title)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.white)
                
      
            TextField("Digite seu peso",value:$peso , formatter: NumberFormatter())
                .keyboardType(.decimalPad)
                .textContentType(.oneTimeCode)
                .padding(10)
                .background(Color.white)
                .cornerRadius(10)
                .multilineTextAlignment(.center)
                
            
            
            TextField("Digite seu peso",value:$altura , formatter: NumberFormatter())
                .keyboardType(.decimalPad)
                .textContentType(.oneTimeCode)
                .padding(10)
                .background(Color.white)
                .cornerRadius(10)
                .multilineTextAlignment(.center)
                //.scaledToFit()
            
            Spacer()
            
            VStack{
                Button("Calcular") {
                    IMC = Double(peso / pow(altura,2))
                    
                    if( IMC < 18.5){
                        fImc = "Baixo Peso"
                        cor = Color("baixo-p")
                    }
                    else if(IMC > 18.5 && IMC < 24.99){
                        fImc = "Normal"
                        cor = Color("normal")
                        
                        
                    }
                    else if (IMC>25 && IMC<29.99){
                        fImc = "Sobrepeso"
                        cor = Color("sobrep")
                    }
                    else if(IMC>30){
                        fImc = "Obesidade"
                        cor = Color("obesidade")
                    }
                
            }
                    
                .frame(width: 120.0, height: 40.0)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(13)
                
                }
            Spacer()
            VStack{
                Text(fImc)
                    .foregroundColor(.white)
                    
            }
            Spacer()
            VStack{
                Image("tabela-IMC")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 240.0, height: 220.0)
                    
                
            }
            
        }.padding(10).background(cor).ignoresSafeArea()
        //
        
        
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
