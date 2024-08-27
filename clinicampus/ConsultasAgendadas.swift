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
        Consulta(medico: "Dra. Thatiany", data: "14/04 às 10:00", area: "Odontologia", imagem: "doctor_image_1"),
        Consulta(medico: "Dr. Fran", data: "10/03 às 10:00", area: "Psicologia", imagem: "doctor_image_2"),
        Consulta(medico: "Dra. Emily", data: "10/03 às 10:00", area: "Psicologia", imagem: "doctor_image_2")
    ]
    
    
    var body: some View {
        NavigationView {
            
        
            ScrollView {
                VStack(spacing:16 ) {
                    Spacer()
                    ForEach(consultas) { consulta in
                        HStack {
                            Image("Bia")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .padding(.trailing, 10)
                            
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
                        .background(Color.red)
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
