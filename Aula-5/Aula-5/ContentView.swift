//
//  ContentView.swift
//  Aula-5
//
//  Created by Student14 on 06/09/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    struct Location: Identifiable{
        let id = UUID()
        let name : String
        let coordinate: CLLocationCoordinate2D
        let flag : String
        let description : String
    }
    var local = [
    Location(name:"Brasil", coordinate: CLLocationCoordinate2D(latitude: -15.683731, longitude: -49.093978 ), flag: "sla", description: "Apresenta uma enorme diversidade paisagística, econômica e cultural. O Brasil é o maior país da América do Sul, com área de mais de 8,5 milhões de km². Tem como capital a cidade de Brasília. Apresenta uma grande variedade climática e paisagística, que pode ser analisada mediante os domínios morfoclimáticos." ),
    Location(name:"EUA", coordinate: CLLocationCoordinate2D(latitude: 38.916202, longitude: -77.021584), flag: "", description: ""),
    Location(name:"Australia", coordinate: CLLocationCoordinate2D(latitude: -24.010817, longitude: 133.687655), flag: "", description: "O AUSTRIAaaaaaaaaaaaaaaaaa")]
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -15.7801, longitude: -47.9292), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    @State private var sheet = false;
    var body: some View {
        VStack {
            Text("World Map")
                .font(.title)
            
            Map(coordinateRegion: $region, annotationItems: local){
                MapAnnotation(coordinate: $0.coordinate){
                    
                
                    
                    Circle()
                        .strokeBorder(.black, lineWidth: 4)
                        .frame(width: 40,height: 40)
                        .onTapGesture(){
                        sheet = true
                    }
                    
                        
                        
                    
                }
            }
            
         
                .scaledToFill()
            Spacer()
           
            HStack{
                
                ForEach(local) { local in
                    Button(local.name){
                        //sheet = true
                        region = MKCoordinateRegion(center:local.coordinate,span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
                        
                       
                    }
                    .frame(width: 120.0, height: 40.0)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(13)
                    .opacity(0.8)
                    
                        .padding()
                    
                    
                    
                        .sheet(isPresented: $sheet){
                            VStack{
                                Text(local.name)
                                
                            }
                            
                            VStack{
                                Text(local.description)
                            }
                        }
                    
                    
                    
                }
                
            }
        }
        .padding()
        }
        
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
