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
            VStack {
//
                
                    NavigationLink("Avaliação Biomédica", destination:  AgendamentoHorarioView())
                        .padding(.horizontal,57)
                        .padding()
                        .font(.title3)
                        .shadow(radius: 10)
                        .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                        .clipShape(.rect(cornerRadius: 16))
                        .foregroundStyle(.white)
                    
                    
                    NavigationLink("Odontologia", destination: AgendamentoHorarioView())
                        .padding(.horizontal,91)
                        .padding()
                        .font(.title3)
                        .shadow(radius: 10)
                        .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                        .clipShape(.rect(cornerRadius: 16))
                        .foregroundStyle(.white)
                        .padding()
                    
                    
                    NavigationLink("Oftalmologia", destination: AgendamentoHorarioView())
                        .padding(.horizontal,89)
                        .padding()
                        .font(.title3)
                        .shadow(radius: 10)
                        .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                        .clipShape(.rect(cornerRadius: 16))
                        .foregroundStyle(.white)
                       
                    
                    
                    
                    NavigationLink("Psicologia", destination: AgendamentoHorarioView())
                        .padding(.horizontal,100)
                        .padding()
                        .font(.title3)
                        .shadow(radius: 10)
                        .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                        .clipShape(.rect(cornerRadius: 16))
                        .foregroundStyle(.white)
                        .padding()
                    
                    
                    NavigationLink("Testes Rápidos", destination: AgendamentoHorarioView())
                        .padding(.horizontal,78)
                        .padding()
                        .font(.title3)
                        .shadow(radius: 10)
                        .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                        .clipShape(.rect(cornerRadius: 16))
                        .foregroundStyle(.white)
                        
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
    
    

