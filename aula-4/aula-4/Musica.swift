//
//  Musica.swift
//  aula-4
//
//  Created by Student14 on 05/09/23.
//

import SwiftUI

struct Musica: View {
    var detalhes : Song
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(.black)
            LinearGradient(colors: [.blue, .clear, .clear], startPoint: .top, endPoint: .bottom)
            
            VStack{
                Spacer()
                
                AsyncImage(url: URL(string:(detalhes.capa))){ image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 200, height: 200, alignment: .center)
                
                Text(detalhes.name)
                    .bold()
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                Text(detalhes.artist)
                    .bold()
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                
                Spacer()
                
                HStack{
                    Image(systemName: "shuffle" )
                        .font(Font.system(.largeTitle))
                        .foregroundColor(.white)
                        .padding(.horizontal, 10.0)
                    Image(systemName: "backward.end.fill" )
                        .font(Font.system(.largeTitle))
                        .foregroundColor(.white)
                        .padding(.horizontal, 10.0)
                    Image(systemName: "play.fill" )
                        .font(.system(size: 56.0, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.horizontal, 40.0)
                    
                    Image(systemName: "forward.end.fill" )
                        .font(Font.system(.largeTitle))
                        .foregroundColor(.white)
                        .padding(.horizontal, 10.0)
                    Image(systemName: "repeat" )
                        .font(Font.system(.largeTitle))
                        .foregroundColor(.white)
                        .padding(.horizontal, 10.0)
                               
                }
                
                
                Spacer()
            }
            
            
        }.ignoresSafeArea()
    }
      
        
    
    
    
}

struct Musica_Previews: PreviewProvider {
    static var previews: some View {
        var teste = Song(id: 1, name:"Musica", artist:"Cantor", capa:"")
        Musica(detalhes: teste)
            
        
    }
}
