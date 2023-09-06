//
//  ContentView.swift
//  aula-4
//
//  Created by Student14 on 05/09/23.
//

import SwiftUI

struct Song : Identifiable{
    var id: Int
    var name: String
    var artist: String
    var capa: String
}


struct ContentView: View {

    
    var musica = [
        Song(id: 1, name:"You and me", artist:"James TW", capa:"https://i.scdn.co/image/ab67616d00001e026f6fd002ef1fc6b1f3f90c87"),
        Song(id: 2, name:"You and me", artist:"James TW", capa:"https://i.scdn.co/image/ab67616d00001e026f6fd002ef1fc6b1f3f90c87"),
        Song(id: 3, name:"You and me", artist:"James TW", capa:"https://i.scdn.co/image/ab67616d00001e026f6fd002ef1fc6b1f3f90c87"),
        Song(id: 4, name:"You and me", artist:"James TW", capa:"https://i.scdn.co/image/ab67616d00001e026f6fd002ef1fc6b1f3f90c87"),
        Song(id: 5, name:"You and me", artist:"James TW", capa:"https://i.scdn.co/image/ab67616d00001e026f6fd002ef1fc6b1f3f90c87"),
        Song(id: 6, name:"You and me", artist:"James TW", capa:"https://i.scdn.co/image/ab67616d00001e026f6fd002ef1fc6b1f3f90c87"),
        Song(id: 7, name:"You and me", artist:"James TW", capa:"https://i.scdn.co/image/ab67616d00001e026f6fd002ef1fc6b1f3f90c87"),
        Song(id: 8, name:"You and me", artist:"James TW", capa:"https://i.scdn.co/image/ab67616d00001e026f6fd002ef1fc6b1f3f90c87"),
        Song(id: 9, name:"You and me", artist:"James TW", capa:"https://i.scdn.co/image/ab67616d00001e026f6fd002ef1fc6b1f3f90c87"),
        Song(id: 10, name:"You and me", artist:"James TW", capa:"https://i.scdn.co/image/ab67616d00001e026f6fd002ef1fc6b1f3f90c87")
    ]
    struct la: Identifiable{
        var id: Int
        var img : String
    }

    var numeros = [
        la(id:1, img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTq4Cpc7JoFMgDty-VyRy-HDtbrTuOQLrfonEGbhdt&s"),
        la(id:2, img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTq4Cpc7JoFMgDty-VyRy-HDtbrTuOQLrfonEGbhdt&s"
),
        la(id:3, img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTq4Cpc7JoFMgDty-VyRy-HDtbrTuOQLrfonEGbhdt&s"
),
        la(id:4, img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTq4Cpc7JoFMgDty-VyRy-HDtbrTuOQLrfonEGbhdt&s"
),
        la(id:5, img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTq4Cpc7JoFMgDty-VyRy-HDtbrTuOQLrfonEGbhdt&s"
),
        la(id:6, img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTq4Cpc7JoFMgDty-VyRy-HDtbrTuOQLrfonEGbhdt&s"
),
        la(id:7, img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTq4Cpc7JoFMgDty-VyRy-HDtbrTuOQLrfonEGbhdt&s"
),
        la(id:8, img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTq4Cpc7JoFMgDty-VyRy-HDtbrTuOQLrfonEGbhdt&s"
),
        la(id:9, img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTq4Cpc7JoFMgDty-VyRy-HDtbrTuOQLrfonEGbhdt&s"
),
        la(id:10, img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTq4Cpc7JoFMgDty-VyRy-HDtbrTuOQLrfonEGbhdt&s"
),
        la(id:11, img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTq4Cpc7JoFMgDty-VyRy-HDtbrTuOQLrfonEGbhdt&s"
)
    ]
    var body: some View {
        NavigationStack{
        ScrollView{
            
            VStack {
                
                Image("Captura de Tela 2023-01-18 às 00.12.11")
                    .resizable()
                    .padding(.horizontal, 70.0)
                    .scaledToFit()
            }
            Spacer()
            VStack(alignment: .leading){
                
                Text("HackFM")
                    .font(.title2)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                HStack(){
                    Image("Captura de Tela 2023-01-18 às 00.12.11")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    Text("Hack Playlist")
                        .foregroundColor(.white)
                }
                Spacer()
                VStack{
                    
                    ForEach(musica) { song in
                        HStack{ AsyncImage(url:URL(string: song.capa)){
                            image in
                            image.resizable()
                            
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 50, height: 50)
                            VStack{
                                NavigationLink(destination: Musica(detalhes: song)){
                                    Text(song.name)
                                        .foregroundColor(.white)
                                }
                                VStack{
                                    Text(song.artist)
                                        .foregroundColor(.gray)
                                }
                            }
                            
                            Spacer()
                            Image (systemName: "ellipsis")
                            
                                .foregroundColor(.white)
                        }
                        
                        
                    }
                    Spacer()
                    
                    VStack{
                        Text("Sugeridos")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        ScrollView(.horizontal){
                            
                            HStack{
                                ForEach(numeros) { N in
                                    
                                    AsyncImage(url:URL(string: N.img))
                                    
                                    
                                    
                                }
                                
                                
                            }
                        }
                    }
                    
                    
                    
                    
                    
                }
                
                
                
            }
                    
                    
            }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .bottom)

        )
            
       
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
