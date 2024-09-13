//
//  ConsultasAgendadas.swift
//  clinicampus
//
//  Created by found on 27/08/24.
//

import SwiftUI

    
    struct Consulta: Identifiable {
        let id = UUID()
        let medico: String
        let data: String
        let area: String
        let imagem: String
    }
    
struct ConsultasAgendadas: View {
    let consultas: [Consulta] = [
        Consulta(medico: "Dra. Cris", data: "14/04 às 10:00", area: "Odontologia", imagem: "Bia"),
        Consulta(medico: "Dr. Fran", data: "10/03 às 10:00", area: "Psicologia", imagem: "Bia"),
        Consulta(medico: "Dra. Emily", data: "10/03 às 10:00", area: "Psicologia", imagem: "Bia"),
        Consulta(medico: "Dra.Kamila", data: "10/03 às 10:00", area: "Oftamologia", imagem: "Bia"),
        
    ]
    
    
    var body: some View {
        NavigationView {
            
        
            ScrollView {
                VStack(spacing:16 ) {
                    Spacer()
                    ForEach(consultas) { consulta in
                        HStack {
                            Image(consulta.imagem)
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 70, height: 70)
                                .padding(.trailing, 40)
                            
                            VStack(alignment: .leading){
                                Text("Médico: \(consulta.medico)")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Text("Data: \(consulta.data)")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                Text("Área: \(consulta.area)")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                
                            }
                            
                        }
                        .padding()
                        .frame(maxWidth:320, minHeight:100)
                        .background(.cabecalho)
                        .cornerRadius(15)
                    }
                    .navigationTitle("Consultas Agendadas")
                    .navigationBarTitleDisplayMode(.inline)
                }
            }
            
        }
    }
}
    #Preview {
        ConsultasAgendadas()
    }
