//
//  TelaigcaView.swift
//  clinicampus
//
//  Created by found on 10/09/24.
//

import SwiftUI

struct TelaigcaView: View {
    var body: some View {
        NavigationView{
            VStack {
                HStack {
                    Text("CliniCampus")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.top,40)
                        .padding(.leading)
                    
                    Spacer()
                    
                    Image("Bia")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .padding(.bottom)
                        .padding(.horizontal,15)
                }
                .background(Color.cabecalho)
                
                VStack(alignment: .leading) {
                    HStack {
                        ScrollView(.horizontal){
                            HStack {
                                NavigationLink(destination:AreaConsultaView()){
                                    VStack {
                                        Image(systemName: "calendar.badge.plus")
                                            .font(.largeTitle)
                                            .foregroundColor(.cabecalho)
                                        
                                        
                                        Text("Agendar consulta")
                                            .font(.subheadline)
                                            .foregroundColor(.black)
                                    }
                                    
                                    .padding(10)
                                    .padding(.vertical,40)
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(10)
                                }
                                NavigationLink(destination: AreaConsultaView()) {
                                    VStack{
                                        Image(systemName: "list.bullet")
                                            .font(.largeTitle)
                                            .foregroundColor(.cabecalho)
                                        
                                            .padding(.bottom,6)
                                        Text("Consultas agendadas")
                                            .font(.subheadline)
                                            .foregroundColor(.black)
                                    }
                                    .padding(.horizontal,2)
                                    .padding(.vertical,51)
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(10)
                                }
                                
                                NavigationLink(destination:AreaConsultaView()) {
                                    VStack{
                                        Image(systemName: "doc.text")
                                            .font(.largeTitle)
                                            .foregroundColor(.cabecalho)
                                        
                                        Text("Histórico de consultas")
                                            .font(.subheadline)
                                            .foregroundColor(.black)
                                    }
                                    .padding(.horizontal,2)
                                    .padding(.vertical,51)
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(10)
                                }
                            }
                            
                        }
                    }
                    
                    Spacer().frame(height: 20)
                    
                    VStack(alignment: .leading) {
                        Text("Próximos agendamentos")
                            .font(.headline)
                        
                        ZStack {
                            NavigationLink(destination:ConsultasAgendadas()){
                                Image("linhas")
                                    .resizable()
                                    .scaledToFit()
                               
                            }
                            VStack(alignment: .leading) {
                                                Text("Dr. Osvaldo Júnior")
                                                    .font(.headline)
                                                    .foregroundColor(.black)
                                                Text("Oftalmologista")
                                                    .font(.subheadline)
                                                    .foregroundColor(.black)
                                                Text("Abr 03, 10:00am")
                                                    .font(.caption)
                                                    .foregroundColor(.black)
                                            }
                            .padding(.trailing,130)
                            
                                        
                        .cornerRadius(10)
                        }
                    }
                
                    Spacer().frame(height: 20)
                    
                    VStack(alignment: .leading) {
                        Text("Campanhas")
                            .font(.headline)
                        
                        Image("campanha1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                    }
                    
                    Spacer()
                }
                .padding()
                
            }
        }
    }
}


struct TelaigcaView_Previews: PreviewProvider {
    static var previews: some View {
        TelaigcaView()
    }
}
