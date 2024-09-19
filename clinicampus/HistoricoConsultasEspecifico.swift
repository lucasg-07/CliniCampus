//
//  HistoricoConsultasEspecifico.swift
//  clinicampus
//
//  Created by found on 30/08/24.
//

import SwiftUI

struct HistoricoConsultasEspecifico: View {
    var body: some View {
        
        ScrollView {
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 200.0)
                
                VStack(spacing: 10) {
                    HStack {
                        Text("Médico(a): Osvaldo Jr.")
                        Spacer()
                        Text("Data: 03/04")
                    }
                    
                    HStack {
                        Text("Especialidade: Clínico Geral")
                        Spacer()
                        Text("Horário: 13:00")
                    }
                }
                .padding()
                .font(.subheadline)
                
                VStack(alignment: .leading,spacing: 10){
                    Text("Relatos do Paciente:")
                        .font(.headline)
                    
                    Text("O paciente relatou fortes dores de cabeça, coriza e febre.")
                    
                    Text("Informações Médicas:")
                        .font(.headline)
                    Text("O paciente apresenta um quadro leve de virose. ")
                    
                }
                .padding()
            }
        }
        Spacer()
    }
    
    
}
#Preview {
    HistoricoConsultasEspecifico()
}
