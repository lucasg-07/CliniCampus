//
//  TelaigcaView.swift
//  clinicampus
//
//  Created by found on 10/09/24.
//

import SwiftUI

struct InformacoesGeraisConsultaAgendada: View {
    var body: some View {
        NavigationStack{
            VStack {
                HStack {
                    Image(systemName: "stethoscope")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                    
                    Text("CliniCampus")
                        .font(.title)
                        .padding()
                        .foregroundColor(.white)
                        .padding(.vertical)
                 
                    
                    Spacer()
                }
                .background(Color.cabecalho)
                
                VStack(alignment: .leading) {
                    HStack {
                        Group {
                            NavigationLink(destination:AreaConsultaView()) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(.black.opacity(0.1))
                                        .frame(height: 150)
                                    VStack {
                                        Image(systemName: "calendar.badge.plus")
                                            .padding(0)
                                            .font(.largeTitle)
                                            .foregroundColor(.cabecalho)
                                        
                                        
                                        Text("Agendar consulta")
                                            .padding(1)
                                            .font(.subheadline)
                                            .foregroundColor(.black)
                                    }
                                    
                                }
                            }
                            NavigationLink(destination: AreaConsultaView()) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(.black.opacity(0.1))
                                        .frame(height: 150)
                                    VStack{
                                        Image(systemName: "list.bullet")
                                            .padding(8)
                                            .font(.largeTitle)
                                            .foregroundColor(.cabecalho)
                                        
                                        Text("Consultas agendadas")
                                            .padding(2)
                                            .font(.subheadline)
                                            .foregroundColor(.black)
                                    }
                                }
                            }
                            
                            NavigationLink(destination:AreaConsultaView()) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(.black.opacity(0.1))
                                        .frame(height: 150)
                                    
                                    VStack{
                                        Image(systemName: "doc.text")
                                            .padding(1)
                                            .font(.largeTitle)
                                            .foregroundColor(.cabecalho)
                                        
                                        Text("Histórico de consultas")
                                            .padding(1)
                                            .font(.subheadline)
                                            .foregroundColor(.black)
                                    }
                                }
                            }
                        }
                        .frame(maxWidth: .infinity)
                        
                        
                    }
                    .frame(maxWidth: .infinity)
                    //                        .background(Color.blue)
                    
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
                                    .foregroundColor(.white)
                                Text("Oftalmologista")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                Text("Abr 03, 10:00am")
                                    .font(.caption)
                                    .foregroundColor(.white)
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
        .navigationBarBackButtonHidden(true)

    }
    
}


struct InformacoesGeraisConsultaAgendada_previews: PreviewProvider {
    static var previews: some View {
        InformacoesGeraisConsultaAgendada()
    }
}
