//
//  AreaConsultaView.swift
//  clinicampus
//
//  Created by found on 16/08/24.
//

import SwiftUI

struct AreaConsultaView: View {
    var body: some View {
        
        NavigationView{
            VStack {
                HStack
                {
                   
                    Text("Áreas de consulta")
                        .bold()
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.top,40)

                    
                }
                .padding(.bottom,80)
                
                
                
                    NavigationLink("Avaliação Biomédica", destination: PerfilView())
                        .padding(.horizontal,30)
                        .padding()
                        .font(.title)
                        .shadow(radius: 10)
                        .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                        .clipShape(.rect(cornerRadius: 16))
                        .foregroundStyle(.white)
                    
                    
                    NavigationLink("Odontologia", destination: PerfilView())
                        .padding(.horizontal,80)
                        .padding()
                        .font(.title)
                        .shadow(radius: 10)
                        .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                        .clipShape(.rect(cornerRadius: 16))
                        .foregroundStyle(.white)
                        .padding()
                    
                    
                    NavigationLink("Oftalmologia", destination: PerfilView())
                        .padding(.horizontal,80)
                        .padding()
                        .font(.title)
                        .shadow(radius: 10)
                        .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                        .clipShape(.rect(cornerRadius: 16))
                        .foregroundStyle(.white)
                       
                    
                    
                    
                    NavigationLink("Psicologia", destination: PerfilView())
                        .padding(.horizontal,100)
                        .padding()
                        .font(.title)
                        .shadow(radius: 10)
                        .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                        .clipShape(.rect(cornerRadius: 16))
                        .foregroundStyle(.white)
                        .padding()
                    
                    
                    NavigationLink("Testes Rápidos", destination: PerfilView())
                        .padding(.horizontal,70)
                        .padding()
                        .font(.title)
                        .shadow(radius: 10)
                        .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                        .clipShape(.rect(cornerRadius: 16))
                        .foregroundStyle(.white)
                        
                }
                
                Spacer()
            }
            
        }
    }
    
    #Preview {
        AreaConsultaView()
    }
    
    

