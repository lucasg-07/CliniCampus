//
//  AreaConsultaView.swift
//  clinicampus
//
//  Created by found on 16/08/24.
//

import SwiftUI

struct AreaConsultaView: View {
    var body: some View {
        
        NavigationStack{
            VStack(spacing: 20){
                //
                
                NavigationLink(destination: AgendamentoHorarioView()){
                    Text("Avaliação Biomédica")
                        .frame(minWidth: 320,minHeight: 50)
                        .font(.title3)
                        .shadow(radius: 10)
                        .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                        .clipShape(.rect(cornerRadius: 16))
                        .foregroundStyle(.white)
                }
                
                
                
                NavigationLink(destination: AgendamentoHorarioView()){
                    Text("Odontologia")
                        .frame(minWidth: 320,minHeight: 50)
                        .font(.title3)
                        .shadow(radius: 10)
                        .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                        .clipShape(.rect(cornerRadius: 16))
                        .foregroundStyle(.white)
                }
                
                
                
                
                NavigationLink(destination: AgendamentoHorarioView()){
                    Text("Oftamologia")
                        .frame(minWidth: 320,minHeight: 50)
                        .font(.title3)
                        .shadow(radius: 10)
                        .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                        .clipShape(.rect(cornerRadius: 16))
                        .foregroundStyle(.white)
                }
                
                
                
                
                
                NavigationLink(destination: AgendamentoHorarioView()){
                    Text("Psicologia")
                        .frame(minWidth: 320,minHeight: 50)
                        .font(.title3)
                        .shadow(radius: 10)
                        .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                        .clipShape(.rect(cornerRadius: 16))
                        .foregroundStyle(.white)
                }
                
                
                
                NavigationLink(destination: AgendamentoHorarioView()){
                    Text("Testes Rápidos")
                        .frame(minWidth: 320,minHeight: 50)
                        .font(.title3)
                        .shadow(radius: 10)
                        .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                        .clipShape(.rect(cornerRadius: 16))
                        .foregroundStyle(.white)
                }
                
            }
            .padding(.bottom)
            .navigationTitle("Área de Consultas")
            .navigationBarTitleDisplayMode(.inline)
            
        }
        
    }
}

#Preview {
    AreaConsultaView()
}



