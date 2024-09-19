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
                    Text("CliniCampus")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.top,40)
                        .padding(.leading)
                    
                    Spacer()
                    
                    Image("Bia")
                        .resizable()
                        .frame(maxWidth: 100, maxHeight: 100)
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
                                NavigationLink(destination: ConsultasAgendadas()) {
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
                                
                                NavigationLink(destination:HistoricoConsultasView()) {
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
                        
                        NavigationLink(destination:ConsultasAgendadas()){
                            
                            ZStack {
                                Image("linhas")
                                    .resizable()
                                    .scaledToFit()
<<<<<<< HEAD
                                
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
                                
                                    .padding(.trailing,130)
                                
                                
                                    .cornerRadius(10)
                            }
                        }
=======
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
                                .padding(.trailing)
                                
                                .cornerRadius(10)
                            }
                        }
                        
                    }
                    
                    
                    
                    Spacer().frame(height: 20)
                    
                    VStack(alignment: .leading) {
                        Text("Campanhas")
                            .font(.headline)
>>>>>>> e3a363805676e05de6a6c6c35411b44c1928725b
                        
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
<<<<<<< HEAD
=======
        .navigationBarBackButtonHidden(true)
>>>>>>> e3a363805676e05de6a6c6c35411b44c1928725b
        
    }
    
    
    struct InformacoesGeraisConsultaAgendada_previews: PreviewProvider {
        static var previews: some View {
            InformacoesGeraisConsultaAgendada()
        }
    }
}
