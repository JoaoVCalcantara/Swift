//
//  ImageView.swift
//  aula-3
//
//  Created by Student14 on 04/09/23.
//

import SwiftUI

struct ImageView: View {
    var imagens = ["rectangle.portrait.and.arrow.forward.fill", "calendar.circle.fill", "speaker.2.fill", "sun.max", "phone.down.circle","paintbrush.fill", "lightbulb.fill"]
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(alignment: .leading){
                ForEach(0..<imagens.count){
                    imageIdx in
                    Image(systemName: imagens[imageIdx])
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .frame(width: 400.0, height: 100.0)
                        .padding(.vertical, 42.0)
                }
            }
            .padding()
        }
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
