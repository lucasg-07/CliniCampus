//
//  ConsultasView.swift
//  CliniCampus
//
//  Created by found on 09/08/24.
//
import SwiftUI

struct DirecionamentoView: View {
    var body: some View {
        NavigationStack{
            
            
            VStack{
                Spacer()
                Image("logo")
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 10.0, bottom: 0.0, trailing: 10.0))
                    .frame(height: 125.0)
                    .clipShape(.rect(cornerRadius: 10))
                    .frame(maxWidth: .infinity)
                    .padding()
                
                Spacer()
                NavigationLink("Agendar consultas", destination: PerfilView())
                    .padding(.horizontal,50)
                    .padding()
                    .font(.title)
                    .shadow(radius: 10)
                    .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                    .clipShape(.rect(cornerRadius: 16))
                    .foregroundStyle(.white)
                    .padding()
                
                NavigationLink("Consultas agendadas", destination: PerfilView())
                    .padding(.horizontal,32)
                    .padding()
                    .font(.title)
                    .shadow(radius: 10)
                    .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                    .clipShape(.rect(cornerRadius: 16))
                    .foregroundStyle(.white)
                    .padding()
                
                
                NavigationLink("Histórico de consultas", destination: PerfilView())
                    .padding()
                    .padding(.horizontal,30)
                    .font(.title)
                    .shadow(radius: 10)
                    .background(Color(hue: 1.0, saturation: 0.978, brightness: 0.773))
                    .clipShape(.rect(cornerRadius: 16))
                    .foregroundStyle(.white)
                    .padding()
                
                Spacer()
                Spacer()
            }
            
        }
    }
}


#Preview {
    DirecionamentoView()
}
