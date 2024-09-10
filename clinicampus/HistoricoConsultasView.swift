//
//  HistoricoConsultasView.swift
//  clinicampus
//
//  Created by found on 03/09/24.
//

import SwiftUI


struct HistoricoConsultasView: View {
    
    let consultas = [
            Consulta(medico: "Dra. Thatiany", data: "14/04 às 10:00", area: "Odontologia", imagem: "Bia"),
            Consulta(medico: "Dr. Fran", data: "10/03 às 10:00", area: "Psicologia", imagem: "Bia"),
            Consulta(medico: "Dr. Osvaldo", data: "10/03 às 10:00", area: "Psicologia", imagem: "Bia")
        ]
        
    var body: some View {
           NavigationView {
               ScrollView {
                   VStack(spacing: 10) {
                       ForEach(consultas) { consulta in
                           ConsultaCard(consulta: consulta)
                       }
                   }
                   .padding()
               }
               .navigationTitle("Histórico de Consultas")
               .navigationBarTitleDisplayMode(.inline)
           }
       }
   }


    // Componente de Cartão da Consulta
    struct ConsultaCard: View {
        let consulta: Consulta
        
        var body: some View {
            VStack(alignment: .leading) {
                HStack {
                    Image(consulta.imagem)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Médico: \(consulta.medico)")
                            .font(.headline)
                        Text("Data: \(consulta.data)")
                            .font(.subheadline)
                        Text("Área: \(consulta.area)")
                            .font(.subheadline)
                       NavigationLink(destination: HistoricoConsultasEspecifico()) {
                            Text("Mais detalhes")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }

                    }
                    .padding(.leading, 10)
                    
                    Spacer()
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(15)
                
                }
                .padding(.horizontal)
            }
          //  .padding(.vertical, 5)
        }
    


#Preview {
    HistoricoConsultasView()
}
